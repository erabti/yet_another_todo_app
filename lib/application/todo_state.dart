import 'package:yet_another_todo_app/domain/entity/todo.dart';

abstract class TodoState {}

class TodoLoaded implements TodoState {
  const TodoLoaded(this.data);

  final List<Todo> data;
}

class TodoError implements TodoState {}

class TodoLoading implements TodoState {}
