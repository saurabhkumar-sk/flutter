import 'package:flutter/material.dart';
import 'package:my_first_app/providers/user_provider.dart';
import 'package:my_first_app/todo_application/db_helper.dart';
import 'package:my_first_app/todo_application/todo_model.dart';
import 'package:provider/provider.dart';

class AddTodo extends StatefulWidget {
  const AddTodo({
    super.key,
    required this.no,
    this.model,
  });

  final int no;
  final TodoModel? model;

  @override
  State<AddTodo> createState() => _AddTodoState();
}

class _AddTodoState extends State<AddTodo> {
  final titleController = TextEditingController();
  final bodyController = TextEditingController();

  @override
  void dispose() {
    titleController.dispose();
    bodyController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    if (widget.model != null) {
      titleController.text = widget.model!.title;
      bodyController.text = widget.model!.body;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('${widget.model == null ? 'Create' : 'Edit'}TODO'),
            TextField(
              controller: titleController,
              decoration: const InputDecoration(
                labelText: 'title',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            TextField(
              textInputAction: TextInputAction.done,
              controller: bodyController,
              decoration: const InputDecoration(
                labelText: 'body',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {
                if (widget.model == null) {
                  DBHelper.instance
                      .createTodo(
                    TodoModel(
                      id: widget.no,
                      title: titleController.text,
                      body: bodyController.text,
                    ),
                  )
                      .then((value) {
                    context.read<UserProvider>().getTodos();
                    Navigator.pop(context);
                  });
                  return;
                }
                DBHelper.instance
                    .createTodo(
                  TodoModel(
                    id: widget.model!.id,
                    title: titleController.text,
                    body: bodyController.text,
                  ),
                )
                    .then((value) {
                  context.read<UserProvider>().getTodos();
                  Navigator.pop(context);
                });
              },
              child: const Text('ADD'),
            ),
          ],
        ),
      ),
    );
  }
}
