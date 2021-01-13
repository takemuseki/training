import 'package:flutter/material.dart';
import 'package:training/common/enum.dart';
import 'package:training/home_screen/home_screen.dart';
import 'package:training/home_screen/user_screen.dart/input_widget.dart';

class RegisterScreen extends StatelessWidget {
  final registerController = <UserInfoEnum, TextEditingController>{
    UserInfoEnum.userName: TextEditingController(),
    UserInfoEnum.height: TextEditingController(),
    UserInfoEnum.weight: TextEditingController(),
    UserInfoEnum.bodyFatPercentage: TextEditingController(),
    UserInfoEnum.age: TextEditingController(),
  };
  final widgetList = <MyInputField>[];

  @override
  Widget build(BuildContext context) {
    print(widgetList);
    print('${DateTime.now()} no');
    registerController.forEach((key, value) {
      print(DateTime.now());
      widgetList.add(MyInputField(
        textController: value,
        infoEnum: key,
      ));
    });
    print('${DateTime.now()} yes');
    print(widgetList);

    return Scaffold(
      appBar: AppBar(
        title: const Text('ユーザー登録'),
        actions: [
          IconButton(
            icon: Icon(Icons.arrow_circle_down),
            onPressed: () {
              // ignore: lines_longer_than_80_chars
              Navigator.push<Object>(
                  context,
                  MaterialPageRoute<Object>(
                      builder: (context) => HomeScreen()));
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: widgetList,
        ),
      ),
    );
  }
}
