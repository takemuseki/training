import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/all.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'user_info_state.freezed.dart';

@freezed
abstract class UserInfoState with _$UserInfoState {
  factory UserInfoState({
    double benchPress,
    double deadLift,
    double backSquat,
    String name,
    double height,
    double weight,
    double bodyFatPercentage,
    String birthday,
  }) = _UserInfoState;
}

class UserInfoController extends StateNotifier<UserInfoState> {
  UserInfoController() : super(UserInfoState());

  void changeInfo({
    double benchPress,
    double deadLift,
    double backSquat,
    String name,
    double height,
    double weight,
    double bodyFatPercentage,
    String birthday,
  }) {
    if (benchPress != null) {
      changeBenchPress(benchPress: benchPress);
    }
    if (deadLift != null) {
      changeDeadLift(deadLift: deadLift);
    }
    if (backSquat != null) {
      changeBackSquat(backSquat: backSquat);
    }
    if (name != null) {
      changeName(name: name);
    }
    if (height != null) {
      changeHeight(height: height);
    }
    if (weight != null) {
      changeWeight(weight: weight);
    }
    if (bodyFatPercentage != null) {
      changeBodyFatPercentage(bodyFatPercentage: bodyFatPercentage);
    }if (birthday != null){
      changeBirthDaty(birthday: birthday);
    }
  }

  void changeBenchPress({@required double benchPress}) {
    state = state.copyWith(benchPress: benchPress);
  }

  void changeDeadLift({@required double deadLift}) {
    state = state.copyWith(deadLift: deadLift);
  }

  void changeBackSquat({@required double backSquat}) {
    state = state.copyWith(backSquat: backSquat);
  }

  void changeHeight({@required double height}) {
    state = state.copyWith(height: height);
  }

  void changeWeight({@required double weight}) {
    state = state.copyWith(weight: weight);
  }

  void changeName({@required String name}) {
    state = state.copyWith(name: name);
  }

  void changeBirthDaty({@required String birthday}) {
    state = state.copyWith(birthday: birthday);
  }

  void changeBodyFatPercentage({@required double bodyFatPercentage}) {
    state = state.copyWith(bodyFatPercentage: bodyFatPercentage);
  }
}
