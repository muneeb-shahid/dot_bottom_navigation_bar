<h1 align="center"> Dot Bottom Navigation Bar</h1>

<p align="center">
 
<img src="https://img.shields.io/badge/Maintained%3F-Yes-green?style=for-the-badge">
<br>
 <a href="#" target="_blank"><img alt="undefined" src="https://badgen.net/pub/flutter-platform/dot_navigation_bar"></a>
 <a href="#" target="_blank"><img alt="undefined" src="https://badgen.net/pub/sdk-version/uuid"></a>
 <br>
</p>


<h2> Introduction </h2>
The <b>dot_bottom_navigation_bar</b> package provides a customizable and visually appealing dotted bottom navigation bar for Flutter developers. This package allows you to easily integrate a bottom navigation bar into your Flutter application with smooth navigation between screens.


<h2>Features</h2>
<b>Customizable Icons:</b> Easily customize icons for both active and inactive states, with support for different icons per state.
<br>
<b>Flexible Styling:</b> Adjust font size for selected and unselected items, and set a custom background color for the navigation bar.
<br>
<b>Seamless Integration:</b> Simple integration into Flutter applications, compatible with various screen sizes and resolutions.
<br>
<b>Responsive Design:</b> Automatically adjusts to screen dimensions, ensuring a responsive design.
<br>
<b>Intuitive Interaction:</b>Responsive tap handling with the onTap callback for capturing user interactions.




<h2> Installation </h2>
To use dot_bottom_navigation_bar, add the following to your <b>pubspec.yaml</b> file:

```
dependencies:
  dot_bottom_navigation_bar: ^1.0.0
```
Then, run:
```
flutter pub get
```


Then import the package in your dart code:
```dart
import 'package:dot_bottom_navigation_bar/dot_bottom_navigation_bar.dart';
```

<h2> Complete Implementation </h2>

```
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


```

<h2>Issues </h2>
If you encounter any issues or have suggestions for improvement, please visit the 
<a href="https://github.com/muneeb-shahid/dot_bottom_navigation_bar">GitHub repository </a> and submit an issue or pull request.

<h2>Developed By</h2>
<b><a href="https://www.linkedin.com/in/muneeb--shahid/">Muneeb Shahid</a></b>
