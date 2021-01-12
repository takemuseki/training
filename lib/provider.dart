import 'package:flutter_riverpod/all.dart';
import 'package:training/home_screen/home_screen.dart';
import 'package:training/home_screen/home_screen_state/home_screen_state.dart';
import 'package:training/user_info/user_info_state.dart';

final homeScreenProvider = StateNotifierProvider<HomeScreenController>((ref) {
    return HomeScreenController();
});

final userInfoProvider = StateNotifierProvider<UserInfoController>((ref) {
    return UserInfoController();
});