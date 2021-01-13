import 'package:flutter/material.dart';
import 'package:training/common/enum.dart';
import 'package:training/home_screen/user_screen.dart/input_widget.dart';

class UserPage extends StatelessWidget {
  final controllerMap = <UserInfoEnum, TextEditingController>{
    UserInfoEnum.backSquat: TextEditingController(),
    UserInfoEnum.benchPress: TextEditingController(),
    UserInfoEnum.deadLift: TextEditingController(),
  };

  final inputFormList = <Widget>[];

  @override
  Widget build(BuildContext context) {
    controllerMap.forEach(
      (key, value) {
        inputFormList.add(
          MyInputField(
            textController: value,
            infoEnum: key,
          ),
        );
      },
    );
    return UserFormPage(inputFormList: inputFormList);
  }
}

class UserFormPage extends StatelessWidget {
  const UserFormPage({
    Key key,
    @required this.inputFormList,
  }) : super(key: key);

  final List<Widget> inputFormList;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print('ontap');
        final currentFocus = FocusScope.of(context);
        if (!currentFocus.hasPrimaryFocus) {
          currentFocus.unfocus();
        }
      },
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: inputFormList,
            ),
          ),
        ),
      ),
    );
  }
}
