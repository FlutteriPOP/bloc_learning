class TodoEvent {}

class TodoAdd extends TodoEvent {
  final String name;

  TodoAdd({required this.name});
}
