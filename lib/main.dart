import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:training/home_screen/home_screen.dart';
import 'package:training/register_screen/register_screen.dart';

void main() {
runApp(
    ProviderScope(
      child: MyApp(),
    ),
  );}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: RegisterScreen(),
    );
  }
}