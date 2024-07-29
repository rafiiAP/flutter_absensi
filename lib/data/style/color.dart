import 'package:flutter/material.dart';

class AppColor {
  AppColor._();

  static MaterialColor primary = const MaterialColor(0xFF6104B3, <int, Color>{
    50: Color(0xFFCEB2E8),
    100: Color(0xFFC4A2E3),
    200: Color(0xFFBA92DE),
    300: Color(0xFFB082D9),
    400: Color(0xFFA773D5),
    500: Color(0xFF9D63D0),
    600: Color(0xFF9353CB),
    700: Color(0xFF8943C6),
    800: Color(0xFF7F34C2),
    900: Color(0xFF7524BD),
  });

  static Color white = const Color(0xFFffffff);
  static Color black = const Color(0xFF000000);
  static Color lightGrey = const Color(0xFFD8D8D8);
  static Color grey = Colors.grey;
}
