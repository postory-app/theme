import 'package:flutter/material.dart';

class PostoryNavigationBarThemeData
    extends ThemeExtension<PostoryNavigationBarThemeData> {
  const PostoryNavigationBarThemeData({
    this.selectedItemColor = Colors.black,
    this.unselectedItemColor = Colors.black38,
    this.splashFactory = NoSplash.splashFactory,
    this.highlightColor = Colors.transparent,
    this.hoverColor = Colors.transparent,
  });

  final Color? selectedItemColor;
  final Color? unselectedItemColor;
  final InteractiveInkFeatureFactory? splashFactory;
  final Color? highlightColor;
  final Color? hoverColor;

  @override
  PostoryNavigationBarThemeData copyWith({
    Color? selectedItemColor,
    Color? unselectedItemColor,
    InteractiveInkFeatureFactory? splashFactory,
    Color? highlightColor,
    Color? hoverColor,
  }) {
    return PostoryNavigationBarThemeData(
      selectedItemColor: selectedItemColor ?? this.selectedItemColor,
      unselectedItemColor: unselectedItemColor ?? this.unselectedItemColor,
      splashFactory: splashFactory ?? this.splashFactory,
      highlightColor: highlightColor ?? this.highlightColor,
      hoverColor: hoverColor ?? this.hoverColor,
    );
  }

  @override
  ThemeExtension<PostoryNavigationBarThemeData> lerp(
      ThemeExtension<PostoryNavigationBarThemeData>? other, double t) {
    throw UnimplementedError();
  }
}

class PostoryNavigationBarTheme extends StatelessWidget {
  const PostoryNavigationBarTheme({Key? key, required this.child})
      : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final themeData = theme.extension<PostoryNavigationBarThemeData>()!;

    return Theme(
      data: theme.copyWith(
        splashFactory: themeData.splashFactory,
        highlightColor: themeData.highlightColor,
        hoverColor: themeData.hoverColor,
      ),
      child: child,
    );
  }
}
