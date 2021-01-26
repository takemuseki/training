import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:training/common/enum.dart';

import 'input_widget.dart';

class UserPage extends StatefulWidget {
  @override
  _UserPageState createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
  final controllerMap = <UserInfoEnum, TextEditingController>{
    UserInfoEnum.backSquat: TextEditingController(),
    UserInfoEnum.benchPress: TextEditingController(),
    UserInfoEnum.deadLift: TextEditingController(),
  };
  final inputFormList = <Widget>[];
  @override
  void initState() {
    print('userPage initState');
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
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
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
        padding: const EdgeInsets.only(left: 20, right: 20),
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
