library postory_theme;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'color_scheme.dart';
import 'text_themes.dart';

class PostoryTheme {
  static ThemeData light() {
    return ThemeData.from(
      colorScheme: colorScheme,
      useMaterial3: true,
    ).copyWith(
        cupertinoOverrideTheme: CupertinoThemeData(
          brightness: colorScheme.brightness,
        ),
        typography: Typography(
          white: TextThemes.white,
          black: TextThemes.black,
        ),
        textTheme: TextThemes.black,
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.black38,
        ));
  }

  static ThemeData dark() => PostoryTheme.light();
}
