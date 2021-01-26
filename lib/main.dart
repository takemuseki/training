import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:training/screens/home_screen/home_screen.dart';

void main() {
  runApp(
    ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.green),
      darkTheme: ThemeData.dark().copyWith(
        tabBarTheme: const TabBarTheme(
          labelStyle: TextStyle(color: Colors.green),
          unselectedLabelStyle: TextStyle(color: Colors.greenAccent),
        ),
        textButtonTheme: TextButtonThemeData(
          style: ButtonStyle(
            textStyle: MaterialStateProperty.resolveWith(
              (states) {
                const interactiveStates = <MaterialState>{
                  MaterialState.pressed,
                  MaterialState.hovered,
                  MaterialState.focused,
                };
                if (states.any(interactiveStates.contains)) {
                  return const TextStyle(color: Colors.green);
                }
                return const TextStyle(color: Colors.greenAccent);
              },
            ),
          ),
        ),
      ),
      home: NavigationScreen(),
    );
  }
}
