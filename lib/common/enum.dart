enum TrainingEnum {
  backSquat,
  benchPress,
  deadLift,
}

extension TrainingEnumExt on TrainingEnum {
  String get name {
    switch (this) {
      case TrainingEnum.backSquat:
        return 'バックスクワット';
      case TrainingEnum.benchPress:
        return 'ベンチプレス';
      case TrainingEnum.deadLift:
        return 'デッドリフト';
    }
    return null;
    // 省略
  }
}

enum UserInfoEnum {
  userName,
  height,
  weight,
  birthday,
  bodyFatPercentage,
  benchPress,
  deadLift,
  backSquat,
}

extension UserInfoEnumEx on UserInfoEnum {
  String get name {
    switch (this) {
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
      case UserInfoEnum.birthday:
        return '年齢';
    }
    return null;
  }
}

enum HomeBodyEnum {
  userPage,
  trainingPage,
}
