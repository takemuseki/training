import 'package:flutter_riverpod/all.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
part 'home_screen_state.freezed.dart';

@freezed
abstract class HomeScreenState with _$HomeScreenState {
  factory HomeScreenState({
    @Default(0) int index,
  }) = _HomeScreenState;
}

class HomeScreenController extends StateNotifier<HomeScreenState> {
  HomeScreenController() : super(HomeScreenState());

  void changeIndex({@required int index}) {
    state = state.copyWith(index: index);
  }
}
