import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yet_another_todo_app/application/todo_notifier.dart';
import 'package:yet_another_todo_app/application/todo_state.dart';
import 'package:yet_another_todo_app/ui/screens/home/widgets/todo_tile.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text('Home Screen'),
        ),
        body: Consumer<TodoNotifier>(
          builder: (context, notifier, _) {
            if (notifier.state is TodoLoading) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }

            if (notifier.state is TodoError) {
              return const Center(
                child: Text('Error'),
              );
            }

            final loaded = notifier.state as TodoLoaded;

            return ListView(
              children: [
                for (final item in loaded.data) TodoTile(item: item),
              ],
            );
          },
        ),
      );
}
