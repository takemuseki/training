import 'package:flutter/material.dart';
import 'package:flutter_riverpod/all.dart';
import 'package:training/common/enum.dart';
import 'package:training/provider.dart';

class MyInputField extends StatelessWidget {
  const MyInputField({
    Key key,
    @required this.textController,
    @required this.infoEnum,
  }) : super(key: key);

  final TextEditingController textController;
  final UserInfoEnum infoEnum;

  @override
  Widget build(BuildContext context) {
    final event = UserInfoEnumToString.toJapanese(userInfoEnum: infoEnum);
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(event),
            ConsumerTextField(
              infoEnum: infoEnum,
              textController: textController,
            ),
          ],
        ),
      ),
    );
  }
}

class ConsumerTextField extends StatelessWidget {
  const ConsumerTextField({
    Key key,
    @required this.infoEnum,
    @required this.textController,
  }) : super(key: key);

  final UserInfoEnum infoEnum;
  final TextEditingController textController;

  @override
  Widget build(BuildContext context) {
    void submit({@required String value}) {
      switch (infoEnum) {
        case UserInfoEnum.userName:
          context.read(userInfoProvider).changeName(name: value);
          break;
        case UserInfoEnum.height:
          break;
        case UserInfoEnum.weight:
          break;
        case UserInfoEnum.age:
          break;
        case UserInfoEnum.bodyFatPercentage:
          break;
        case UserInfoEnum.benchPress:
          break;
        case UserInfoEnum.deadLift:
          break;
        case UserInfoEnum.backSquat:
          break;
      }
    }

    return Consumer(builder: (context, watch, child) {
      double label;
      switch (infoEnum) {
        case UserInfoEnum.backSquat:
          label = watch(userInfoProvider.state).backSquat;
          break;
        case UserInfoEnum.deadLift:
          label = watch(userInfoProvider.state).deadLift;
          break;
        case UserInfoEnum.benchPress:
          label = watch(userInfoProvider.state).benchPress;
          break;
        case UserInfoEnum.userName:
          break;
        case UserInfoEnum.height:
          break;
        case UserInfoEnum.weight:
          break;
        case UserInfoEnum.age:
          break;
        case UserInfoEnum.bodyFatPercentage:
          break;
      }
      return UserTextField(
        textController: textController,
        label: label,
        submit: (String text) {},
      );
    });
  }
}

class UserTextField extends StatelessWidget {
  const UserTextField({
    Key key,
    @required this.textController,
    @required this.label,
    @required this.submit,
  }) : super(key: key);
  final TextEditingController textController;
  final double label;
  final Function(String) submit;
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: textController,
      keyboardType: TextInputType.multiline,
      decoration: InputDecoration(
        labelText: label.toString(),
        fillColor: Colors.white,
      ),
      onSubmitted: submit,
    );
  }
}
