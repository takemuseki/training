import 'package:flutter/material.dart';
import 'package:flutter_riverpod/all.dart';
import 'package:training/provider.dart';

class MyBottomNavigationBar extends ConsumerWidget {
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
  Widget build(BuildContext context, ScopedReader watch) {
    return BottomNavigationBar(
      items: items,
      currentIndex: watch(homeScreenProvider.state).index,
      onTap: (index) {
        context.read(homeBodyEnumProvider).state = index;
      },
    );
  }
}
