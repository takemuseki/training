import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:training/screens/training_screen/training_screen.dart';
import 'package:training/screens/user_screen.dart/user_page.dart';
/*
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

 */

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

    return Scaffold(
      body: Container(
        color: Theme.of(context).appBarTheme.shadowColor,
        child: SafeArea(
          child: _widgetOptions.elementAt(_selectedIndex),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: items,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        showSelectedLabels: true,
        showUnselectedLabels: false,
        selectedLabelStyle: const TextStyle(
          fontSize: 12,
        ),
        iconSize: 30,
      ),
    );

    /*
    return SafeArea(
      child: CupertinoTabScaffold(
        tabBar: CupertinoTabBar(
          items: items,
          iconSize: 36,
        ),
        tabBuilder: (context, index) {
          switch (index) {
            case 0:
              return UserPage();
            case 1:
              return TrainingPage();
          }
        },
      ),
    );

     */
  }
}
