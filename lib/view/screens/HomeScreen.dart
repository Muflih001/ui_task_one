import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Text(
            'Welcome        \n            To\n            Flutter World',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
          ),
        ),
      ),
    );
  }
}
