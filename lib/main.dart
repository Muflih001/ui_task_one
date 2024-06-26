import 'package:flutter/material.dart';
import 'package:ui_task_one/view/screens/HomeScreen.dart';
import 'package:ui_task_one/view/screens/LoginScreen.dart';
import 'package:ui_task_one/view/screens/RegisterScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
      routes: {
        'LoginScreen': (context) => LoginScreen(),
        'RegisterScreen': (context) => RegisterScreen(),
        'HomeScreen': (context) => HomeScreen(),
      },
    );
  }
}
