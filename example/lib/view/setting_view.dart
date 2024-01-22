import 'package:flutter/material.dart';

class SettingView extends StatelessWidget {
  const SettingView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.tealAccent,

      body: Center(
        child: Text(
          "Setting Screen",
          style: TextStyle(fontSize: 20, color: Colors.black),
        ),
      ),
    );
  }
}
