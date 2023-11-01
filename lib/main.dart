import 'package:flutter/material.dart';
import 'package:news_app/assets/app_theme.dart';
import 'package:news_app/screens/home_screen.dart';
import 'package:news_app/screens/navigation_bar.dart';
import 'package:news_app/screens/news_page_screen.dart';
import 'package:news_app/screens/profile_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Gellix'),
      home: Scaffold(
        backgroundColor: lighterWhite,
        body: HomeScreen(),
        bottomNavigationBar: BottomNavigation(
          selectedIndex: _selectedIndex,
          onItemTapped: _onItemTapped,
        ),
      ),
    );
  }
}
