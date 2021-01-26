import 'package:flutter/material.dart';
import 'package:flutter_riverpod/all.dart';
import 'package:training/model/user_info/user_info_state.dart';
import 'package:training/screens/home_screen/home_screen_state/home_screen_state.dart';

import 'screens/training_screen/training_screen.dart';
import 'screens/user_screen.dart/user_page.dart';

final homeScreenProvider = StateNotifierProvider<HomeScreenController>((ref) {
  return HomeScreenController();
});

final userInfoProvider = StateNotifierProvider<UserInfoController>((ref) {
  return UserInfoController();
});

final homeBodyPagesProvider = Provider<Map<int, Widget>>((ref) {
  return <int, Widget>{
    0: UserPage(),
    1: TrainingPage(),
  };
});

final homeBodyEnumProvider = StateProvider<int>((ref) {
  return 0;
});

final homeBodyProvider = Provider<Widget>((ref) {
  final pages = ref.read(homeBodyPagesProvider);
  final bodyEnum = ref.watch(homeBodyEnumProvider);

  return pages[bodyEnum.state];
});
