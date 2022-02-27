import 'package:flutter/material.dart';
import 'package:yet_another_todo_app/application/todo_state.dart';
import 'package:yet_another_todo_app/data/repo/todo_repo_impl.dart';

import '../domain/repo/todo_repo.dart';

class TodoNotifier extends ChangeNotifier {
  TodoNotifier({
    this.repo = const TodoRepoImpl(),
  }) {
    load();
  }

  final TodoRepo repo;

  TodoState _state = TodoLoading();

  void _setState(TodoState state) {
    _state = state;
    notifyListeners();
  }

  TodoState get state => _state;

  Future<void> load() async {
    try {
      final result = await repo.fetchTodos();
      _setState(TodoLoaded(result));
    } catch (error, stackTrace) {
      debugPrint('$error: $stackTrace');
      _setState(TodoError());
    }
  }
}
