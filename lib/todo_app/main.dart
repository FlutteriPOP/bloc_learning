import 'package:bloc_learning/todo_app/bloc/todo_bloc.dart';
import 'package:bloc_learning/todo_app/cubit/todo_cubit.dart';
import 'package:bloc_learning/todo_app/pages/todo_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) {
        return MultiBlocProvider(
          providers: [
            BlocProvider(create: (context) => TodoCubit()),
            BlocProvider(create: (context) => TodoBloc()),
          ],
          child: MaterialApp(home: TodoPage()),
        );
      },
    );
  }
}
