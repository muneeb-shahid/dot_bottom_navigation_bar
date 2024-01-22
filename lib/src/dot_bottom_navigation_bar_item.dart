import 'package:flutter/material.dart';

class DotBottomNavigationBarItem {
  DotBottomNavigationBarItem({
    this.activeIcon,
    required this.icon,
  });
  Widget? activeIcon;
  Widget icon;
}
