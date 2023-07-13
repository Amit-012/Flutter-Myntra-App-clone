// ignore_for_file: library_private_types_in_public_api
import 'package:flutter/material.dart';
import 'package:myntra_clone/screens/home.dart';
import 'package:myntra_clone/screens/reward.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      home: MyNavigationBar(),
    );
  }
}

class MyNavigationBar extends StatefulWidget {
  const MyNavigationBar({super.key});

  @override
  State<MyNavigationBar> createState() => _MyNavigationBarState();
}

class _MyNavigationBarState extends State<MyNavigationBar> {
  int _currentIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    Home(),
    Reward(),
    Text(''),
    Text(''),
    Text(''),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_currentIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        selectedItemColor: const Color.fromRGBO(255, 63, 108, 1),
        currentIndex: _currentIndex,
        items: const [
          BottomNavigationBarItem(
            backgroundColor: Color.fromRGBO(255, 63, 108, 1),
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            backgroundColor: Color.fromRGBO(255, 63, 108, 1),
            icon: Icon(Icons.category),
            label: 'Reward',
          ),
          BottomNavigationBarItem(
            backgroundColor: Color.fromRGBO(255, 63, 108, 1),
            icon: Icon(Icons.tv_outlined),
            label: 'Studio',
          ),
          BottomNavigationBarItem(
            backgroundColor: Color.fromRGBO(255, 63, 108, 1),
            icon: Icon(Icons.explore),
            label: 'Explore',
          ),
          BottomNavigationBarItem(
            backgroundColor: Color.fromRGBO(255, 63, 108, 1),
            icon: Icon(Icons.person_outline),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
