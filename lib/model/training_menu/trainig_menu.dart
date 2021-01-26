import 'package:flutter/material.dart';

class TrainingMenu {
  TrainingMenu({
    @required this.days,
    @required this.sets,
    @required this.maxSets,
    @required this.weight,
  });

  /// how many days are there in the TrainingMenu.

  final int days;

  /// how many sets are there in each day.
  /// length is days.
  /// max set 99
  final List<int> sets;

  /// max number of sets.
  final int maxSets;

  /// key = day * 100 + set
  /// value = weight
  final Map<int, List<double>> weight;
}
