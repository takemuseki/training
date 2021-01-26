import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:training/common/enum.dart';
import 'package:training/model/training_info/five_by_five.dart';
import 'package:training/model/training_menu/make_training_menu.dart';
import 'package:training/provider.dart';
import 'package:training/screens/training_screen/training_data_table.dart';

class TrainingPage extends StatelessWidget {
  static const _tabs = [
    Tab(
      icon: Icon(Icons.directions_car),
      text: 'バックスクワット',
    ),
    Tab(
      icon: Icon(Icons.directions_transit),
      text: 'ベンチプレス',
    ),
    Tab(
      icon: Icon(Icons.directions_bike),
      text: 'デッドリフト',
    ),
  ];
  static const maker = MakeTrainingMenu();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: DefaultTabController(
          length: _tabs.length,
          child: Column(
            children: <Widget>[
              ButtonsTabBar(
                backgroundColor: Theme.of(context).primaryColor,
                unselectedBackgroundColor: Colors.white,
                labelStyle: const TextStyle(
                  //color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 12,
                ),
                unselectedLabelStyle: const TextStyle(
                  //color: Colors.blue[600],
                  fontWeight: FontWeight.bold,
                  fontSize: 12,
                ),
                borderWidth: 1,
                borderColor: Theme.of(context).primaryColor,
                unselectedBorderColor: Theme.of(context).primaryColor,
                radius: 200,
                tabs: _tabs,
              ),
              Expanded(
                child: TabBarView(
                  children: List.generate(_tabs.length, (index) {
                    return Consumer(
                      builder: (context, watch, child) {
                        switch (TrainingEnum.values[index]) {
                          case TrainingEnum.backSquat:
                            final weight =
                                watch(userInfoProvider.state).backSquat;
                            print('squat$weight');
                            return weight == null
                                ? child
                                : TrainingTable(
                                    trainingMenu: maker.makeTrainingMenu(
                                      weight: watch(userInfoProvider.state)
                                          .backSquat,
                                      trainingInfo: FiveByFive(),
                                    ),
                                  );
                          case TrainingEnum.benchPress:
                            final weight =
                                watch(userInfoProvider.state).benchPress;
                            print('bench$weight');
                            return weight == null
                                ? child
                                : TrainingTable(
                                    trainingMenu: maker.makeTrainingMenu(
                                      weight: watch(userInfoProvider.state)
                                          .benchPress,
                                      trainingInfo: FiveByFive(),
                                    ),
                                  );

                          case TrainingEnum.deadLift:
                            final weight =
                                watch(userInfoProvider.state).deadLift;
                            print('dead$weight');
                            return weight == null
                                ? child
                                : TrainingTable(
                                    trainingMenu: maker.makeTrainingMenu(
                                      weight: watch(userInfoProvider.state)
                                          .deadLift,
                                      trainingInfo: FiveByFive(),
                                    ),
                                  );
                        }
                        return Container();
                      },
                      child: const Center(
                        child: Text('Max重量を登録してください'),
                      ),
                    );
                  }),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
