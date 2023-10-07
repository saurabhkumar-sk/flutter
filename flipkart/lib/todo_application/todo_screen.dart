import 'package:flutter/material.dart';
import 'package:my_first_app/providers/user_provider.dart';
import 'package:my_first_app/todo_application/add_todo.dart';
import 'package:my_first_app/todo_application/db_helper.dart';
import 'package:my_first_app/todo_application/todo_model.dart';
import 'package:provider/provider.dart';

class ToDoScreen extends StatefulWidget {
  const ToDoScreen({super.key});

  @override
  State<ToDoScreen> createState() => _ToDoScreenState();
}

class _ToDoScreenState extends State<ToDoScreen> {
  late UserProvider provider;
  bool isloading = true;

  @override
  void initState() {
    provider = Provider.of(context, listen: false);
    provider.getTodos().then((value) {
      setState(() {
        isloading = false;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'TODOs',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
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
              builder: (context, list, child) => ListView.builder(
                itemCount: list.length,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
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
                  );
                },
              ),
            ),
    );
  }
}
