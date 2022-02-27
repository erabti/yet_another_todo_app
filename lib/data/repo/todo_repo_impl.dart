import 'package:yet_another_todo_app/domain/entity/todo.dart';
import 'package:yet_another_todo_app/domain/repo/todo_repo.dart';

class TodoRepoImpl implements TodoRepo {
  const TodoRepoImpl();

  @override
  Future<List<Todo>> fetchTodos() async {

    return [
      Todo(text: 'Some todo', createdAt: DateTime.now()),
      Todo(text: 'Some todo 2', createdAt: DateTime.now()),
      Todo(text: 'Some todo 3', createdAt: DateTime.now()),
      Todo(text: 'Some todo 4', createdAt: DateTime.now()),
      Todo(text: 'Some todo 5', createdAt: DateTime.now()),
    ];
  }
}
