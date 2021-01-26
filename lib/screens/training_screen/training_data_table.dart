import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:training/model/training_menu/trainig_menu.dart';

class TrainingTable extends ConsumerWidget {
  const TrainingTable({
    @required this.trainingMenu,
  });
  final TrainingMenu trainingMenu;

  static const padding = 15.0;

  DataColumn _dataColumn(int index) {
    return DataColumn(
      label: Expanded(
        child: Center(
          child: Text(
            index == 0 ? 'day' : 'day$index',
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }

  DataCell _dataCell({
    @required int index,
    @required double cellWidth,
    @required int day,
    @required int rep,
    @required double weight,
  }) {
    return DataCell(
      SizedBox(
        width: cellWidth,
        child: index == 0
            ? Center(
                child: Text(
                  (day + 1).toString(),
                ),
              )
            : Container(
                padding: const EdgeInsets.all(2),
                margin: const EdgeInsets.symmetric(vertical: 4),
                decoration: BoxDecoration(
                  border: Border(
                    left: BorderSide(
                      color: Colors.grey[200],
                      width: 1,
                      style: BorderStyle.solid,
                    ),
                  ),
                ),
                child: Center(
                  child: Text(
                    '$weight×$rep',
                  ),
                ),
              ),
      ),
    );
  }

  List<DataRow> _rows({
    @required int maxSets,
    @required double cellWidth,
    @required int days,
    @required Function(bool value) popup,
  }) {
    return List<DataRow>.generate(
      days,
      (day) {
        return DataRow(
          onSelectChanged: popup,
          cells: List<DataCell>.generate(maxSets + 1, (index) {
            final repWeight = trainingMenu.weight[(day + 1) * 100 + index];
            final rep = repWeight == null ? 0 : repWeight[0].round();
            final weight = repWeight == null ? 0.0 : repWeight[1];

            return _dataCell(
              index: index,
              cellWidth: cellWidth,
              day: day,
              rep: rep,
              weight: weight,
            );
          }),
        );
      },
    );
  }

  void onTap(bool value) {
    print('onTap');
  }

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final cellWidth = (MediaQuery.of(context).size.width - padding * 2) /
        (trainingMenu.maxSets + 1);

    /// about DataTable
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(
          right: padding,
          left: padding,
        ),
        child: DataTable(
          columnSpacing: 0,
          dataRowHeight: 50,
          dividerThickness: 5,
          headingRowHeight: 60,
          headingRowColor:
              MaterialStateProperty.all(Theme.of(context).appBarTheme.color),
          horizontalMargin: 0,
          showBottomBorder: true,
          showCheckboxColumn: false,
          columns: List<DataColumn>.generate(
            trainingMenu.maxSets + 1,
            _dataColumn,
          ),
          rows: _rows(
            cellWidth: cellWidth,
            maxSets: trainingMenu.maxSets,
            days: trainingMenu.days,
            popup: onTap,
          ),
        ),
      ),
    );
  }
}
