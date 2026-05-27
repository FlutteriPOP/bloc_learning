import 'package:bloc_learning/todo_app/bloc/todo_event.dart';
import 'package:bloc_learning/todo_app/model/todo_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TodoBloc extends Bloc<TodoEvent, List<Todo>> {
  TodoBloc() : super([]) {
    on<TodoAdd>((event, emit) {
      emit([...state, Todo(name: event.name, createdAt: DateTime.now())]);
    });
  }
}
