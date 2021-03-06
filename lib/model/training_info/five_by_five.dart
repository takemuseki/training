import 'dart:core';

import 'package:training/model/training_info/training_info.dart';

/// only menu logic. It should be without Constructor
class FiveByFive extends TrainingInfo {
  FiveByFive()
      : super(
          days: fiveByFiveDays,
          sets: fiveByFiveSets,
          repsWeight: fiveByFiveRepsWeight,
        );
}

const int fiveByFiveDays = 16;
const List<int> fiveByFiveSets = [
  5,
  5,
  5,
  5,
  5,
  5,
  5,
  5,
  5,
  5,
  5,
  5,
  5,
  5,
  5,
  5
];
const Map<int, List<double>> fiveByFiveRepsWeight = {
  101: [5, 55],
  102: [5, 60],
  103: [5, 65],
  104: [5, 70],
  105: [5, 75],
  201: [5, 60],
  202: [5, 65],
  203: [5, 70],
  204: [5, 75],
  205: [5, 80],
  301: [5, 55],
  302: [5, 60],
  303: [5, 65],
  304: [5, 70],
  305: [5, 75],
  401: [5, 60],
  402: [5, 54],
  403: [5, 70],
  404: [5, 75],
  405: [5, 80],
  501: [5, 65],
  502: [5, 70],
  503: [5, 75],
  504: [5, 80],
  505: [5, 85],
  601: [5, 60],
  602: [5, 54],
  603: [5, 70],
  604: [5, 75],
  605: [5, 80],
  701: [5, 65],
  702: [5, 70],
  703: [5, 75],
  704: [5, 80],
  705: [5, 85],
  801: [5, 70],
  802: [5, 75],
  803: [5, 80],
  804: [5, 85],
  805: [5, 90],
  901: [5, 65],
  902: [5, 70],
  903: [5, 75],
  904: [5, 80],
  905: [5, 85],
  1001: [5, 70],
  1002: [5, 75],
  1003: [5, 80],
  1004: [5, 85],
  1005: [5, 90],
  1101: [5, 75],
  1102: [5, 80],
  1103: [5, 85],
  1104: [5, 90],
  1105: [5, 95],
  1201: [5, 70],
  1202: [5, 75],
  1203: [5, 80],
  1204: [5, 85],
  1205: [5, 90],
  1301: [5, 75],
  1302: [5, 80],
  1303: [5, 85],
  1304: [5, 90],
  1305: [5, 95],
  1401: [5, 80],
  1402: [5, 85],
  1403: [5, 90],
  1404: [5, 95],
  1405: [5, 100],
  1501: [5, 75],
  1502: [5, 80],
  1503: [5, 85],
  1504: [5, 90],
  1505: [5, 95],
  1601: [5, 80],
  1602: [5, 85],
  1603: [5, 90],
  1604: [5, 95],
  1605: [5, 100],
};
