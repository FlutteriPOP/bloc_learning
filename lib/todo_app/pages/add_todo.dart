import 'package:bloc_learning/todo_app/bloc/todo_bloc.dart';
import 'package:bloc_learning/todo_app/bloc/todo_event.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddTodo extends StatelessWidget {
  const AddTodo({super.key});

  @override
  Widget build(BuildContext context) {
    final todoController = TextEditingController();
    return Scaffold(
      appBar: AppBar(title: Text('Add TOdod')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextFormField(controller: todoController),
            SizedBox(height: 20),
            ElevatedButton.icon(
              onPressed: () {
                context.read<TodoBloc>().add(
                  TodoAdd(name: todoController.text),
                );
                Navigator.pop(context);
              },
              label: Text('Add'),
              icon: Icon(Icons.add),
            ),
          ],
        ),
      ),
    );
  }
}
