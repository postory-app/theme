library postory_theme;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:postory_theme/src/old_theme.dart';

import 'color_schemes.g.dart';
import 'custom_color.g.dart';
import 'themes/navigation_bar_theme_data.dart';

export 'themes/navigation_bar_theme_data.dart';

class PostoryTheme {
  static ThemeData light() {
    const navigationBarThemeData = PostoryNavigationBarThemeData();
    final oldThemes = OldThemes.light();

    return ThemeData.from(
      colorScheme: lightColorScheme,
      useMaterial3: true,
    ).copyWith(
      cupertinoOverrideTheme: CupertinoThemeData(
        brightness: lightColorScheme.brightness,
      ),
      // typography: Typography(
      //   white: TextThemes.white,
      //   black: TextThemes.black,
      // ),
      // textTheme: TextThemes.black,
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        selectedItemColor: navigationBarThemeData.selectedItemColor,
        unselectedItemColor: navigationBarThemeData.unselectedItemColor,
      ),
      extensions: [navigationBarThemeData, lightCustomColors],

      // TODO: deprecate old themes
      primaryColor: oldThemes.primaryColor,
      canvasColor: oldThemes.canvasColor,
      dividerColor: oldThemes.dividerColor,
      buttonTheme: oldThemes.buttonTheme,
      colorScheme: oldThemes.colorScheme,
      snackBarTheme: oldThemes.snackBarTheme,
      appBarTheme: oldThemes.appBarTheme.copyWith(
        surfaceTintColor: oldThemes.appBarTheme.backgroundColor,
      ),
      bottomSheetTheme: oldThemes.bottomSheetTheme,
      dividerTheme: oldThemes.dividerTheme,
      textTheme: oldThemes.textTheme,
      elevatedButtonTheme: oldThemes.elevatedButtonTheme,
      listTileTheme: oldThemes.listTileTheme,
      outlinedButtonTheme: oldThemes.outlinedButtonTheme,
      textButtonTheme: oldThemes.textButtonTheme,
    );
  }

  static ThemeData dark() {
    const navigationBarThemeData = PostoryNavigationBarThemeData();
    return ThemeData.from(colorScheme: darkColorScheme, useMaterial3: true).copyWith(
      extensions: [navigationBarThemeData, lightCustomColors],
    );
  }
}

extension PostoryThemeOfBuildContext on BuildContext {
  ThemeData get theme => Theme.of(this);
}
