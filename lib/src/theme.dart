library postory_theme;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'color_scheme.dart';
import 'themes/navigation_bar_theme_data.dart';
import 'themes/text_themes.dart';

export 'themes/navigation_bar_theme_data.dart';

class PostoryTheme {
  static ThemeData light() {
    const navigationBarThemeData = PostoryNavigationBarThemeData();

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
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        selectedItemColor: navigationBarThemeData.selectedItemColor,
        unselectedItemColor: navigationBarThemeData.unselectedItemColor,
      ),
      extensions: const [navigationBarThemeData],
    );
  }

  static ThemeData dark() => PostoryTheme.light();
}
