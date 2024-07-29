import 'package:flutter/material.dart';
import 'package:jab_project/view/sign_up_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const SignUpScreen(),
      routes: {
        '/SignUpScreen' : (context) => const SignUpScreen()
      },
    );
  }
}

