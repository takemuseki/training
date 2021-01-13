import 'package:flutter/material.dart';

final lightThemeData = ThemeData.light().copyWith(
  primaryColor: HexColor(hexColor: '#b50208'),
  accentColor: HexColor(hexColor: '#12b388'),
);

final darkThemeData = ThemeData.dark().copyWith(
  primaryColor: HexColor(hexColor: '#b50208'),
  accentColor: HexColor(hexColor: '#12b388'),
);

class HexColor extends Color {
  HexColor({final String hexColor})
      : super(_getColorFromHex(
          hexColor: hexColor,
        ));
  static int _getColorFromHex({@required String hexColor}) {
    final hexxColor = hexColor.toUpperCase().replaceAll('#', '');
    String color;
    if (hexxColor.length == 6) {
      color = 'FF$hexxColor';
    } else {
      color = hexxColor;
    }
    return int.parse(color, radix: 16);
  }
}
