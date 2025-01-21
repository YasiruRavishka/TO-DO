import 'package:flutter/material.dart';
import 'package:to_do/core/app_colors.dart';
import 'package:to_do/features/home/home_page.dart';
import 'package:to_do/features/profile/profile_page/profile_page.dart';

import 'core/navigator_keys.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'To-Do',
      navigatorKey: globalNavigatorKey,
      theme: ThemeData(
        brightness: kLightTheme,
        primarySwatch: kLightPrimarySwatch,
      ),
      darkTheme: ThemeData(
        brightness: kDarkTheme,
        primarySwatch: kDarkPrimarySwatch,
      ),
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case '/':
            return MaterialPageRoute(
              builder: (context) => const HomePage(),
            );
          case '/profile':
            return MaterialPageRoute(
              builder: (context) => const ProfilePage(),
            );
          default:
            return MaterialPageRoute(
              builder: (context) => const HomePage(),
            );
        }
      },
    );
  }
}
