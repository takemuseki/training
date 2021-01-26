import 'dart:math';

import 'package:flutter/foundation.dart';
import 'package:training/model/training_info/training_info.dart';
import 'package:training/model/training_menu/trainig_menu.dart';

class MakeTrainingMenu {
  const MakeTrainingMenu();
  TrainingMenu makeTrainingMenu({
    @required double weight,
    @required TrainingInfo trainingInfo,
  }) {
    final trainingMap = <int, List<double>>{};
    final maxSets = trainingInfo.sets.reduce(max);
    for (var d = 1; d <= trainingInfo.days; d++) {
      // trainingInfo.sets is List
      for (var s = 1; s <= trainingInfo.sets[d - 1]; s++) {
        final num = d * 100 + s;
        trainingMap[num] = [
          trainingInfo.repsWeight[num][0],
          weight * trainingInfo.repsWeight[num][1] / 100,
        ];
      }
    }

    return TrainingMenu(
      days: trainingInfo.days,
      sets: trainingInfo.sets,
      weight: trainingMap,
      maxSets: maxSets,
    );
  }
}
