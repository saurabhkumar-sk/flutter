import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:my_first_app/providers/user_provider.dart';
import 'package:my_first_app/todo_application/add_todo.dart';
import 'package:my_first_app/todo_application/db_helper.dart';
import 'package:my_first_app/todo_application/todo_model.dart';
import 'package:my_first_app/utils/utils.dart';
import 'package:provider/provider.dart';

class ToDoScreen extends StatefulWidget {
  const ToDoScreen({super.key});

  @override
  State<ToDoScreen> createState() => _ToDoScreenState();
}

class _ToDoScreenState extends State<ToDoScreen> {
  late UserProvider provider;
  bool isloading = true;
  bool loader = false;
  bool pagination = true;
  int offset = 0;

  @override
  void initState() {
    provider = Provider.of(context, listen: false);
    getData();
    super.initState();
  }

  void getData() {
    if (!pagination) return;
    setState(() {
      loader = true;
    });

    provider.getTodos().then((value) {
      isloading = false;

      if (value < 10) pagination = false;

      loader = false;

      offset += 10;

      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    log(FirebaseAuth.instance.currentUser.toString());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'TODOs',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            onPressed: () {
              FirebaseAuth.instance.signOut();
            },
            icon: const Icon(Icons.logout),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) => AddTodo(no: provider.todos.length),
          );
        },
        child: const Icon(Icons.add),
      ),
      body: isloading
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : Selector<UserProvider, List<TodoModel>>(
              selector: (p0, p1) => p1.todos,
              builder: (context, list, child) {
                return NotificationListener(
                  onNotification: (notification) =>
                      Utils.scrollNotifier(notification, getData),
                  child: ListView.builder(
                    padding: const EdgeInsets.all(10),
                    itemCount: list.length + (loader ? 1 : 0),
                    itemBuilder: (BuildContext context, int index) => index ==
                            list.length
                        ? const Center(child: CircularProgressIndicator())
                        : Padding(
                            padding: const EdgeInsets.symmetric(vertical: 5),
                            child: ListTile(
                              tileColor: Colors.amber,
                              title: Text(list[index].title),
                              subtitle: Text(list[index].body),
                              trailing: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  IconButton(
                                    onPressed: () {
                                      showDialog(
                                        context: context,
                                        builder: (context) => AddTodo(
                                          no: provider.todos.length,
                                          model: list[index],
                                        ),
                                      );
                                    },
                                    icon: const Icon(
                                      Icons.edit,
                                      color: Color.fromARGB(255, 27, 28, 36),
                                    ),
                                  ),
                                  IconButton(
                                    onPressed: () {
                                      DBHelper.instance
                                          .delete(list[index])
                                          .then((value) => provider.getTodos());
                                    },
                                    icon: const Icon(
                                      Icons.delete,
                                      color: Color.fromARGB(255, 255, 17, 0),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                  ),
                );
              },
            ),
    );
  }
}
