import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:training/home_screen/bottom_navigation_bar.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: MyBottomNavigationBar(),
    );
  }
}