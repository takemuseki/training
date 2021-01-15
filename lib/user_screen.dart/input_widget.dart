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
    String label;
    return Consumer(
      builder: (context, watch, child) {
        print('infoEnum');
        print(infoEnum);
        dynamic value;
        switch (infoEnum) {
          case UserInfoEnum.userName:
            break;
          case UserInfoEnum.height:
            break;
          case UserInfoEnum.weight:
            break;
          case UserInfoEnum.birthday:
            break;
          case UserInfoEnum.bodyFatPercentage:
            break;
          case UserInfoEnum.benchPress:
            value = watch(userInfoProvider).state.benchPress;
            break;
          case UserInfoEnum.deadLift:
            value = watch(userInfoProvider.state).deadLift;
            break;
          case UserInfoEnum.backSquat:
            value = watch(userInfoProvider.state).backSquat;
            break;
        }
        if (value == null) {
          label = '数値を入力してください';
        } else {
          label = value.toString();
        }
        return UserTextField(
          textController: textController,
          label: label,
          submit: (String text) {
            print(context.read(userInfoProvider.state));

            print('submit');
            print(text);

            print(111);
            context.read(userInfoProvider).changeInfoWithEnum(
                  userInfoEnum: infoEnum,
                  value: double.parse(text),
                );
            print('yes');
            print(context.read(userInfoProvider.state));
            textController.clear();
          },
        );
      },
    );
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
  final String label;
  final Function(String) submit;
  @override
  Widget build(BuildContext context) {
    print('userTextField');
    print(label);
    return TextField(
      controller: textController,
      autocorrect: false,
      keyboardType: const TextInputType.numberWithOptions(
        decimal: true,
        signed: true,
      ),
      decoration: InputDecoration(
        hintText: label,
        fillColor: Colors.white,
      ),
      onSubmitted: submit,
    );
  }
}
