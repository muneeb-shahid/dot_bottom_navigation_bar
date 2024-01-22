import 'package:dot_bottom_navigation_bar/dot_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';

class DotBottomNavigationBar extends StatelessWidget {
  DotBottomNavigationBar({
    super.key,
    required this.onTap,
    required this.items,
    required this.currentIndex,
    this.selectedFontSize = 0.0,
    this.unselectedFontSize = 0.0,
    this.backgroundColor = Colors.white,
  });

  int currentIndex;
  final List<DotBottomNavigationBarItem> items;
  double selectedFontSize;
  double unselectedFontSize;
  Color backgroundColor;
  Function(int)? onTap;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.07,
      width: double.infinity,
      child: BottomNavBar(
        items: items,
        currentIndex: currentIndex,
        onTap: onTap!,
      ),
    );
  }
}