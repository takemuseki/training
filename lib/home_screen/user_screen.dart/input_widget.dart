import 'package:flutter/material.dart';
import 'package:training/common/enum.dart';



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
    final label = UserInfoEnumToString.toJapanese(userInfoEnum: infoEnum);

    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20)
      ),
      shadowColor: Colors.red,
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: TextField(
          controller: textController,
          keyboardType: TextInputType.multiline,
          decoration: InputDecoration(
            labelText: label,
            fillColor: Colors.white,
          ),
        ),
      ),
    );
  }
}