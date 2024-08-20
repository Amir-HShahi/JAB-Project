import 'package:flutter/material.dart';
import 'package:jab_project/routes.dart';
import 'package:jab_project/view/sign_in_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const SignInScreen(),
      routes: routesData,
    );
  }
}
