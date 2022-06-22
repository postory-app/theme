library postory_theme;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'core/color_scheme.dart';
import 'core/text_themes.dart';

export 'package:postory_theme/core/icons.dart';
export 'package:postory_theme/core/images.dart';
export 'package:postory_theme/core/lotties.dart';
export 'package:postory_theme/core/svgs.dart';

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
    );
  }

  static ThemeData dark() => PostoryTheme.light();
}
