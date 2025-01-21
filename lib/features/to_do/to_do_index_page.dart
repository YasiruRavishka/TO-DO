import 'package:flutter/material.dart';
import 'package:to_do/features/to_do/to_do_page.dart';

class ToDoIndexPage extends StatelessWidget {
  const ToDoIndexPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Navigator(
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case '/':
            return MaterialPageRoute(
              builder: (context) => const ToDoPage(),
            );
          default:
            return MaterialPageRoute(
              builder: (context) => const ToDoPage(),
            );
        }
      },
    );
  }
}
