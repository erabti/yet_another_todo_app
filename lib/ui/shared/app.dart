import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yet_another_todo_app/application/todo_notifier.dart';
import 'package:yet_another_todo_app/ui/screens/home/home_screen.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => ChangeNotifierProvider(
        create: (_) => TodoNotifier(),
        child: MaterialApp(
          theme: ThemeData(
            colorScheme: ColorScheme.fromSwatch(
              primarySwatch: Colors.orange,
              backgroundColor: Colors.white,
            ),
            appBarTheme: const AppBarTheme(
              titleTextStyle: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          home: const HomeScreen(),
        ),
      );
}
