import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/all.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:training/common/enum.dart';
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
    }
    if (birthday != null) {
      changeBirthDaty(birthday: birthday);
    }
  }

  dynamic returnByEnum({
    @required UserInfoEnum userInfoEnum,
  }) {
    print('returnByEnum');
    print(userInfoEnum);
    switch (userInfoEnum) {
      case UserInfoEnum.userName:
        return state.name;
        break;
      case UserInfoEnum.height:
        return state.height;
        break;
      case UserInfoEnum.weight:
        state.weight;
        break;
      case UserInfoEnum.birthday:
        return state.birthday;
        break;
      case UserInfoEnum.bodyFatPercentage:
        return state.bodyFatPercentage;
        break;
      case UserInfoEnum.benchPress:
        return state.benchPress;
        break;
      case UserInfoEnum.deadLift:
        return state.deadLift;
        break;
      case UserInfoEnum.backSquat:
        return state.backSquat;
        break;
    }
  }

  void changeInfoWithEnum({
    @required UserInfoEnum userInfoEnum,
    @required dynamic value,
  }) {
    switch (userInfoEnum) {
      case UserInfoEnum.userName:
        changeName(name: value as String);
        break;
      case UserInfoEnum.height:
        changeHeight(height: value as double);
        break;
      case UserInfoEnum.weight:
        changeWeight(weight: value as double);
        break;
      case UserInfoEnum.birthday:
        changeBirthDaty(birthday: value as String);
        break;
      case UserInfoEnum.bodyFatPercentage:
        changeBodyFatPercentage(bodyFatPercentage: value as double);
        break;
      case UserInfoEnum.benchPress:
        print(33333);
        changeBenchPress(benchPress: value as double);
        break;
      case UserInfoEnum.deadLift:
        changeDeadLift(deadLift: value as double);
        break;
      case UserInfoEnum.backSquat:
        changeBackSquat(backSquat: value as double);
        break;
    }
  }

  void changeBenchPress({@required double benchPress}) {
    print('changeBenchPress');
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
