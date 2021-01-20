import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/all.dart';
import 'package:training/provider.dart';
import 'package:training/training_screen/training_page.dart';
import 'package:training/user_screen.dart/user_page.dart';

class HomeScreen extends StatelessWidget {
  static const items = <BottomNavigationBarItem>[
    BottomNavigationBarItem(
      icon: Icon(Icons.home),
      label: 'user',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.label),
      label: 'training',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    print('homeScreen');
    return SafeArea(
      child: Scaffold(
        body: Consumer(
          builder: (context, watch, child) {
            return watch(homeBodyProvider);
          },
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: items,
          currentIndex: 0,
          onTap: (index) {
            context.read(homeBodyEnumProvider).state = index;
          },
        ),
      ),
    );
  }
}

class NavigationScreen extends StatefulWidget {
  @override
  _NavigationScreenState createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  int _selectedIndex = 0;
  static const items = <BottomNavigationBarItem>[
    BottomNavigationBarItem(
      icon: Icon(Icons.home),
      label: 'user',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.label),
      label: 'training',
    ),
  ];
  static final _widgetOptions = <Widget>[
    UserPage(),
    TrainingPage(),
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    print('navigationScreen');

    return SafeArea(
      child: Scaffold(
        body: _widgetOptions.elementAt(_selectedIndex),
        bottomNavigationBar: BottomNavigationBar(
          items: items,
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
