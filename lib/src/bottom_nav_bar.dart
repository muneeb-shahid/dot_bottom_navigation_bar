import 'package:dot_bottom_navigation_bar/src/dot_bottom_navigation_bar_item.dart';
import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    super.key,
    required this.items,
    required this.currentIndex,
    required this.onTap,
  });

  final List<DotBottomNavigationBarItem> items;
  final int currentIndex;
  final Function(int index) onTap;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      bottomNavigationBar: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: items.asMap().entries.map((entry) {
            final index = entry.key;
            final item = entry.value;
            final isSelected = currentIndex == index;
            return GestureDetector(
              onTap: () => onTap(index),
              child: Container(
                child: isSelected ? item.activeIcon ?? item.icon : item.icon,
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
