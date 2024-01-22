import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: Text(
          "Home Screen",
          style: TextStyle(fontSize: 20, color: Colors.black),
        ),
      ),
    );
  }
}
