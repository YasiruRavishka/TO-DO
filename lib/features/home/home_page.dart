import 'package:flutter/material.dart';
import 'package:to_do/core/navigator_keys.dart';
import 'package:to_do/features/profile/profile_index_page.dart';
import 'package:to_do/features/to_do/to_do_index_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children: const [
          ToDoIndexPage(),
          ProfileIndexPage(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          key: bottomNavigatorKey,
          currentIndex: _currentIndex,
          onTap: (index) => {
                setState(() {
                  _currentIndex = index;
                })
              },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.list),
              label: 'To-Do',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
            )
          ]),
    );
  }
}
