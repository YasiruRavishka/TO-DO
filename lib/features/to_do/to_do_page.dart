import 'package:flutter/material.dart';

class ToDoPage extends StatelessWidget {
  const ToDoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ToDo Page'),
      ),
      body: const Center(
        child: Text('Demo ToDo Page'),
      ),
    );
  }
}
