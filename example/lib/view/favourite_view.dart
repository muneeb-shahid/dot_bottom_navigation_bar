import 'package:flutter/material.dart';

class FavouriteView extends StatelessWidget {
  const FavouriteView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.amber,
      body: Center(
        child: Text(
          "Favourite Screen",
          style: TextStyle(fontSize: 20, color: Colors.black),
        ),
      ),
    );
  }
}
