import 'package:flutter/material.dart';
import 'package:to_do/features/profile/login_page/login_page.dart';
import 'package:to_do/features/profile/profile_page/profile_page.dart';

class ProfileIndexPage extends StatelessWidget {
  const ProfileIndexPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Navigator(
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case '/':
            return MaterialPageRoute(
              builder: (context) => const ProfilePage(),
            );
          case '/login':
            return MaterialPageRoute(
              builder: (context) => const LoginPage(),
            );
          default:
            return MaterialPageRoute(
              builder: (context) => const ProfilePage(),
            );
        }
      },
    );
  }
}
