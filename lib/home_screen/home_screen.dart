import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/all.dart';
import 'package:training/home_screen/bottom_navigation_bar.dart';
import 'package:training/home_screen/training_page.dart';
import 'package:training/home_screen/user_screen.dart/user_page.dart';
import 'package:training/provider.dart';

class HomeScreen extends ConsumerWidget {
  final userPage = UserPage();
  final trainingPage = TrainingPage();
  @override
  Widget build(BuildContext context, ScopedReader watch) {
    return SafeArea(
      child: Scaffold(
        body: body(index: watch(homeScreenProvider.state).index),
        bottomNavigationBar: MyBottomNavigationBar(),
      ),
    );
  }

  Widget body({
    @required int index,
  }) {
    if (index == 0) {
      return userPage;
    }
    return trainingPage;
  }
}
