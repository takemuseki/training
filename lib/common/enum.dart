import 'package:freezed_annotation/freezed_annotation.dart';

enum UserInfoEnum {
  userName,
  height,
  weight,
  age,
  bodyFatPercentage,
  benchPress,
  deadLift,
  backSquat,
}

class UserInfoEnumToString {
  static String toJapanese({
    @required UserInfoEnum userInfoEnum,
  }) {
    switch (userInfoEnum) {
      case UserInfoEnum.benchPress:
        return 'ベンチプレス';
      case UserInfoEnum.deadLift:
        return 'デッドリフト';
      case UserInfoEnum.backSquat:
        return 'バックスクワット';
      case UserInfoEnum.userName:
        return 'ユーザー名';
      case UserInfoEnum.height:
        return '身長';
      case UserInfoEnum.weight:
        return '体重';
      case UserInfoEnum.bodyFatPercentage:
        return '体脂肪率';
      case UserInfoEnum.age:
        return '年齢';
    }
    return null;
  }
}
