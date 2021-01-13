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
  bool first = true;

  @override
  Widget build(BuildContext context) {
    if (first) {
      /*
      inputFormList.add(
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.1,
        ),
      );
      */
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
      first = false;
    }

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
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: inputFormList,
            ),
          ),
        ),
      ),
    );
  }
}
