import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:flutter/foundation.dart';

part 'test.freezed.dart';
/*
final testProvider = StateNotifierProvider<>((ref) {
    return ;
});
*/

final testStateProvider = StateNotifierProvider<TestStateController>((ref) {
  return TestStateController();
});

@freezed
abstract class TestState with _$TestState {
  factory TestState({
    @Default(<String,dynamic>{
      "tes1": true,
      "test2": false,
    })
        Map<String, dynamic> map,
  }) = _TestState;
}

class TestStateController extends StateNotifier<TestState> {
  TestStateController() : super(TestState());

  void changeMap({
    @required String key,
    @required dynamic value,
  }) {
    state.map[key] = value;
  }
}

class TestScreen extends ConsumerWidget {
  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final provider = watch(testStateProvider.state);
    final tes1 = provider.map["tes1"].toString();
    final tes2 = provider.map["test2"].toString();
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(tes1),
            Text(tes2),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.person_search),
        onPressed: () {
          print('onPressed');
          context.read(testStateProvider).changeMap(key: "test2", value: true);
        },
      ),
    );
  }
}
