import 'package:flutter/material.dart';
import 'package:training/provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class TrainingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          IconButton(
            icon: Icon(Icons.data_usage),
            onPressed: () {
              context.read(userInfoProvider).changeInfo(
                    benchPress: 175,
                    backSquat: 173,
                    deadLift: 75,
                  );
            },
          ),
          IconButton(
            icon: Icon(Icons.ac_unit),
            onPressed: () {
              context.read(userInfoProvider).changeInfo(
                    weight: 75,
                    height: 78,
                  );
            },
          ),
          IconButton(
            icon: Icon(Icons.access_alarm),
            onPressed: () {
              print(context.read(userInfoProvider.state));
            },
          ),
        ],
      ),
    );
  }
}
