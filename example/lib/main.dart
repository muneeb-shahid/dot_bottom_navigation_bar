import 'package:dot_bottom_navigation_bar/dot_bottom_navigation_bar.dart';
import 'package:example/view/favourite_view.dart';
import 'package:example/view/home_view.dart';
import 'package:example/view/setting_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dot Bottom Navigation Bar',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int currentIndex = 0;
  final screen = [
    const HomeView(),
    const FavouriteView(),
    const SettingView(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screen[currentIndex],
      bottomNavigationBar: DotBottomNavigationBar(
          onTap: (int index) {
            setState(() {
              currentIndex = index;
            });
          },
          items: [
            DotBottomNavigationBarItem(
                activeIcon: const Column(
                  children: [
                    Icon(
                      Icons.home,
                      color: Colors.green,
                    ),
                    CircleAvatar(
                      radius: 3,
                      backgroundColor: Colors.green,
                    ),
                  ],
                ),
                icon: const Icon(
                  Icons.home_outlined,
                  color: Colors.green,
                )),
            DotBottomNavigationBarItem(
                activeIcon: const Column(
                  children: [
                    Icon(
                      Icons.favorite,
                      color: Colors.green,
                    ),
                    CircleAvatar(
                      radius: 3,
                      backgroundColor: Colors.green,
                    ),
                  ],
                ),
                icon: const Icon(
                  Icons.favorite_border,
                  color: Colors.green,
                )),
            DotBottomNavigationBarItem(
                activeIcon: const Column(
                  children: [
                    Icon(
                      Icons.settings,
                      color: Colors.green,
                    ),
                    CircleAvatar(
                      radius: 3,
                      backgroundColor: Colors.green,
                    ),
                  ],
                ),
                icon: const Icon(
                  Icons.settings_outlined,
                  color: Colors.green,
                )),
          ],
          currentIndex: currentIndex),
    );
  }
}
