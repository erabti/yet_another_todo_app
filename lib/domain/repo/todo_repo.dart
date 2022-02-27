import 'package:yet_another_todo_app/domain/entity/todo.dart';

abstract class TodoRepo {
  Future<List<Todo>> fetchTodos();
}
