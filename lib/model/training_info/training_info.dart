import 'dart:core';

import 'package:flutter/cupertino.dart';

/// abstract class which will be extended to training
abstract class TrainingInfo {
  TrainingInfo({
    @required this.days,
    @required this.sets,
    @required this.repsWeight,
  });

  /// how many days are there in the TrainingMenu.
  final int days;

  /// how many sets are there in each day.
  /// length is days.
  /// max set 99
  final List<int> sets;

  /// key = day * 100 + set
  /// value = [reps, percentage]
  final Map<int, List<double>> repsWeight;
}
