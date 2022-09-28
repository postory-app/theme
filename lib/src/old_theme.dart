import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

enum ButtonBorder {
  Obtuse,
  Stadium,
}

class OldThemes {
  static final _obtuseBorder = RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(7.0),
  );

  static ThemeData light() {
    final colorScheme = ColorScheme.light(
      primary: OldColors.Primary,
      secondary: OldColors.Secondary,
    );

    return ThemeData(
      brightness: Brightness.light,
      primarySwatch: MaterialColor(OldColors.Primary.value, OldColors.Palette),
      primaryColor: OldColors.Primary,
      canvasColor: OldColors.SystemGray1,
      dividerColor: OldColors.SystemGray5,
      buttonTheme: button(),
      colorScheme: colorScheme,
      snackBarTheme: SnackBarThemeData(
        backgroundColor: OldColors.Secondary,
        contentTextStyle: TextStyle(
          fontSize: FontSize.P2_15,
          color: OldColors.SystemGray1,
          fontWeight: OldFontWeight.Bold,
        ),
      ),
      appBarTheme: appBar(),
      bottomSheetTheme: BottomSheetThemeData(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
        ),
      ),
      dividerTheme: DividerThemeData(
        indent: 16.0,
        endIndent: 16.0,
        color: OldColors.SystemGray3,
      ),
      textTheme: TextTheme(
        button: TextStyle(
          fontSize: FontSize.P2_15,
          fontWeight: OldFontWeight.Regular,
        ),
        subtitle1: TextStyle(
          color: OldColors.SystemGray7,
          fontSize: FontSize.P1_17,
          fontWeight: OldFontWeight.Bold,
        ),
        bodyText2: TextStyle(
          color: OldColors.SystemGray6,
          fontSize: FontSize.Comment_13,
          fontWeight: OldFontWeight.Regular,
        ),
      ),
      elevatedButtonTheme: elevatedButton(),
      listTileTheme: ListTileThemeData(
        iconColor: OldColors.SystemGray4,
      ),
      outlinedButtonTheme: outlinedButton(),
      textButtonTheme: textButton(),
    );
  }

  static AppBarTheme secondaryAppBar({
    Color? color,
    Color? backgroundColor = OldColors.Secondary,
    Color? foregroundColor,
    double? elevation = 0.0,
    Color? shadowColor,
    ShapeBorder? shape,
    IconThemeData? iconTheme =
        const IconThemeData(color: OldColors.SystemGray1),
    IconThemeData? actionsIconTheme,
    bool? centerTitle = true,
    double? titleSpacing,
    double? toolbarHeight,
    TextStyle? toolbarTextStyle,
    TextStyle? titleTextStyle = const TextStyle(
      fontSize: FontSize.P1_17,
      color: OldColors.SystemGray1,
      fontWeight: OldFontWeight.Bold,
    ),
    SystemUiOverlayStyle? systemOverlayStyle,
  }) {
    return AppBarTheme(
      color: color,
      backgroundColor: backgroundColor,
      foregroundColor: foregroundColor,
      elevation: elevation,
      shadowColor: shadowColor,
      shape: shape,
      iconTheme: iconTheme,
      actionsIconTheme: actionsIconTheme,
      centerTitle: centerTitle,
      titleSpacing: titleSpacing,
      toolbarHeight: toolbarHeight,
      toolbarTextStyle: toolbarTextStyle,
      titleTextStyle: titleTextStyle,
      systemOverlayStyle: systemOverlayStyle,
    );
  }

  static AppBarTheme appBar({
    Color? color,
    Color? backgroundColor = OldColors.SystemGray1,
    Color? foregroundColor,
    double? elevation = 0.0,
    Color? shadowColor,
    ShapeBorder? shape,
    IconThemeData? iconTheme =
        const IconThemeData(color: OldColors.SystemGray7),
    IconThemeData? actionsIconTheme,
    bool? centerTitle = true,
    double? titleSpacing,
    double? toolbarHeight,
    TextStyle? toolbarTextStyle,
    TextStyle? titleTextStyle = const TextStyle(
      fontSize: FontSize.P1_17,
      color: OldColors.SystemGray7,
      fontWeight: OldFontWeight.Bold,
    ),
    SystemUiOverlayStyle? systemOverlayStyle,
  }) {
    return AppBarTheme(
      color: color,
      backgroundColor: backgroundColor,
      foregroundColor: foregroundColor,
      elevation: elevation,
      shadowColor: shadowColor,
      shape: shape,
      iconTheme: iconTheme,
      actionsIconTheme: actionsIconTheme,
      centerTitle: centerTitle,
      titleSpacing: titleSpacing,
      toolbarHeight: toolbarHeight,
      toolbarTextStyle: toolbarTextStyle,
      titleTextStyle: titleTextStyle,
      systemOverlayStyle: systemOverlayStyle,
    );
  }

  static ElevatedButtonThemeData secondaryElevatedButton({
    ButtonBorder? border,
    Color? onPrimary = OldColors.SystemGray1,
    Color? primary = OldColors.Secondary,
  }) {
    return elevatedButton(
      backgroundColor: primary,
      foregroundColor: onPrimary,
      disabledBackgroundColor: OldColors.SystemGray5,
      disabledForegroundColor: onPrimary,
      shape: (border ?? ButtonBorder.Stadium) == ButtonBorder.Stadium
          ? StadiumBorder()
          : _obtuseBorder,
    );
  }

  static ElevatedButtonThemeData elevatedButton({
    Color? backgroundColor = OldColors.Primary,
    Color? foregroundColor = OldColors.SystemGray7,
    Color? disabledForegroundColor,
    Color? disabledBackgroundColor,
    Color? shadowColor,
    double? elevation = 0.0,
    TextStyle? textStyle = const TextStyle(
        fontSize: FontSize.P2_15, fontWeight: OldFontWeight.Bold),
    EdgeInsetsGeometry? padding,
    Size? minimumSize,
    Size? fixedSize,
    Size? maximumSize,
    BorderSide? side,
    OutlinedBorder? shape,
    MouseCursor? enabledMouseCursor,
    MouseCursor? disabledMouseCursor,
    VisualDensity? visualDensity,
    MaterialTapTargetSize? tapTargetSize = MaterialTapTargetSize.shrinkWrap,
    Duration? animationDuration,
    bool? enableFeedback,
    AlignmentGeometry? alignment,
    InteractiveInkFeatureFactory? splashFactory,
  }) {
    return ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor,
        foregroundColor: foregroundColor,
        disabledBackgroundColor: disabledBackgroundColor,
        disabledForegroundColor: disabledForegroundColor,
        shadowColor: shadowColor,
        elevation: elevation,
        textStyle: textStyle,
        padding: padding,
        minimumSize: minimumSize,
        fixedSize: fixedSize,
        maximumSize: maximumSize,
        side: side,
        shape: shape ?? _obtuseBorder,
        enabledMouseCursor: enabledMouseCursor,
        disabledMouseCursor: disabledMouseCursor,
        visualDensity: visualDensity,
        tapTargetSize: tapTargetSize,
        animationDuration: animationDuration,
        enableFeedback: enableFeedback,
        alignment: alignment,
        splashFactory: splashFactory,
      ),
    );
  }

  static ButtonThemeData button({
    ButtonTextTheme textTheme = ButtonTextTheme.normal,
    double minWidth = 88.0,
    double height = 36.0,
    EdgeInsetsGeometry? padding,
    ShapeBorder? shape,
    ButtonBarLayoutBehavior layoutBehavior = ButtonBarLayoutBehavior.padded,
    bool alignedDropdown = false,
    Color? buttonColor,
    Color? disabledColor,
    Color? focusColor,
    Color? hoverColor,
    Color? highlightColor,
    Color? splashColor,
    ColorScheme? colorScheme,
    MaterialTapTargetSize? materialTapTargetSize,
  }) {
    return ButtonThemeData(
      textTheme: textTheme,
      minWidth: minWidth,
      height: height,
      padding: padding ?? const EdgeInsets.all(0),
      shape: shape ?? _obtuseBorder,
      layoutBehavior: layoutBehavior,
      alignedDropdown: alignedDropdown,
      buttonColor: buttonColor,
      disabledColor: disabledColor,
      focusColor: focusColor,
      hoverColor: hoverColor,
      highlightColor: highlightColor,
      splashColor: splashColor,
      colorScheme: colorScheme,
      materialTapTargetSize:
          materialTapTargetSize ?? MaterialTapTargetSize.shrinkWrap,
    );
  }

  static OutlinedButtonThemeData outlinedButton({
    Color? primary,
    Color? onSurface,
    Color? backgroundColor,
    Color? shadowColor,
    double? elevation,
    TextStyle? textStyle,
    EdgeInsetsGeometry? padding,
    Size? minimumSize,
    Size? fixedSize,
    Size? maximumSize,
    BorderSide? side,
    OutlinedBorder? shape,
    MouseCursor? enabledMouseCursor,
    MouseCursor? disabledMouseCursor,
    VisualDensity? visualDensity,
    MaterialTapTargetSize? tapTargetSize,
    Duration? animationDuration,
    bool? enableFeedback,
    AlignmentGeometry? alignment,
    InteractiveInkFeatureFactory? splashFactory,
  }) {
    return OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        primary: primary ?? OldColors.Secondary,
        onSurface: onSurface,
        backgroundColor: backgroundColor,
        shadowColor: shadowColor,
        elevation: elevation,
        textStyle: textStyle,
        padding: padding,
        minimumSize: minimumSize,
        fixedSize: fixedSize,
        maximumSize: maximumSize,
        side: side ?? BorderSide(color: primary ?? OldColors.Secondary),
        shape: shape ?? _obtuseBorder,
        enabledMouseCursor: enabledMouseCursor,
        disabledMouseCursor: disabledMouseCursor,
        visualDensity: visualDensity,
        tapTargetSize: tapTargetSize ?? MaterialTapTargetSize.shrinkWrap,
        animationDuration: animationDuration,
        enableFeedback: enableFeedback,
        alignment: alignment,
        splashFactory: splashFactory,
      ),
    );
  }

  static TextButtonThemeData ActionTextButton() {
    return textButton(
      primary: OldColors.Secondary,
    );
  }

  static TextButtonThemeData textButton({
    Color? primary,
    Color? onSurface,
    Color? backgroundColor,
    Color? shadowColor,
    double? elevation,
    TextStyle? textStyle,
    EdgeInsetsGeometry? padding,
    Size? minimumSize,
    Size? fixedSize,
    Size? maximumSize,
    BorderSide? side,
    OutlinedBorder? shape,
    MouseCursor? enabledMouseCursor,
    MouseCursor? disabledMouseCursor,
    VisualDensity? visualDensity,
    MaterialTapTargetSize? tapTargetSize,
    Duration? animationDuration,
    bool? enableFeedback,
    AlignmentGeometry? alignment,
    InteractiveInkFeatureFactory? splashFactory,
  }) {
    return TextButtonThemeData(
      style: TextButton.styleFrom(
        primary: primary,
        onSurface: onSurface,
        backgroundColor: backgroundColor,
        shadowColor: shadowColor,
        elevation: elevation,
        textStyle: textStyle,
        padding: padding ?? const EdgeInsets.all(0),
        minimumSize: minimumSize,
        fixedSize: fixedSize,
        maximumSize: maximumSize,
        side: side,
        shape: shape,
        enabledMouseCursor: enabledMouseCursor,
        disabledMouseCursor: disabledMouseCursor,
        visualDensity: visualDensity,
        tapTargetSize: tapTargetSize ?? MaterialTapTargetSize.shrinkWrap,
        animationDuration: animationDuration,
        enableFeedback: enableFeedback,
        alignment: alignment,
        splashFactory: splashFactory,
      ),
    );
  }
}

class OldColors {
  OldColors._();

  static const Color Primary = Color(0xFFFFD24A);
  static const Color Secondary = Color(0xFF008169);
  static const Color Tertiary = Color(0xFF52E7FF);
  static const Color SystemBlue = Color(0xFF2887FF);
  static const Color SystemRed = Color(0xFFFF3226);
  static const Color SystemGray1 = Color(0xFFFFFEFA);
  static const Color SystemGray2 = Color(0xFFF7F6F2);
  static const Color SystemGray3 = Color(0xFFE6E5E1);
  static const Color SystemGray4 = Color(0xFFC7C6C3);
  static const Color SystemGray5 = Color(0xFF969592);
  static const Color SystemGray6 = Color(0xFF63625f);
  static const Color SystemGray7 = Color(0xFF1F1E1C);

  static const Palette = {
    50: Color(0xFFFFFBED),
    100: Color(0xFFFFF6DB),
    200: Color(0xFFFFEDB7),
    300: Color(0xFFFFE492),
    400: Color(0xFFFFDB6E),
    500: Color(0xFFFFD24A),
    600: Color(0xFFE5BD43),
    700: Color(0xFFCCA83B),
    800: Color(0xFFB29334),
    900: Color(0xFF997E2C),
  };
}

class FontSize {
  FontSize._();

  static const H1_44 = 44.0;
  static const LT_34 = 34.0;
  static const T1_28 = 28.0;
  static const T2_22 = 22.0;
  static const T3_20 = 20.0;
  static const P1_17 = 17.0;
  static const P2_15 = 15.0;
  static const CallOut_16 = 16.0;
  static const Comment_13 = 13.0;
  static const D2_11 = 11.0;
}

class OldFontWeight {
  static const Light = FontWeight.w300;
  static const Regular = FontWeight.w400;
  static const Bold = FontWeight.w700;
  static const Black = FontWeight.w800;
}
