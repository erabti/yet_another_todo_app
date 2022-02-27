import 'package:flutter/material.dart';
import 'package:yet_another_todo_app/domain/entity/todo.dart';

class TodoTile extends StatelessWidget {
  const TodoTile({
    Key? key,
    required this.item,
  }) : super(key: key);

  final Todo item;

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 8,
        ),
        child: Row(
          children: [
            Checkbox(
              value: item.completed,
              onChanged: (_) {},
            ),
            const SizedBox(width: 20),
            Text(
              item.text,
              style: Theme.of(context).textTheme.subtitle1,
            ),
          ],
        ),
      );
}
