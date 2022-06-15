import 'package:flutter/material.dart';

class Colors {
  static const blue = Color(0xFF2887FF);
  static const green = Color(0xFF008169);
  static const red = Color(0xFFFF3226);

  static const MaterialColor yellow = MaterialColor(
    _yellowPrimaryValue,
    <int, Color>{
      50: Color(0xFFFFFBED),
      100: Color(0xFFFFF6DB),
      200: Color(0xFFFFEDB7),
      300: Color(0xFFFFE492),
      400: Color(0xFFFFDB6E),
      500: Color(_yellowPrimaryValue),
      600: Color(0xFFE5BD43),
      700: Color(0xFFCCA83B),
      800: Color(0xFFB29334),
      900: Color(0xFF997E2C),
    },
  );
  static const int _yellowPrimaryValue = 0xFFFFD24A;
}
