import 'package:flutter_riverpod/all.dart';
import 'package:training/home_screen/home_screen.dart';
import 'package:training/home_screen/home_screen_state/home_screen_state.dart';

final homeScreenStateProvider = StateNotifierProvider<HomeScreenController>((ref) {
    return HomeScreenController();
});