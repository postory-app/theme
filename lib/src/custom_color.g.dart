import 'package:dynamic_color/dynamic_color.dart';
import 'package:flutter/material.dart';

const approve = Color(0xFF2887FF);
const error = Color(0xFFFF3226);


CustomColors lightCustomColors = const CustomColors(
  sourceApprove: Color(0xFF2887FF),
  approve: Color(0xFF005CBA),
  onApprove: Color(0xFFFFFFFF),
  approveContainer: Color(0xFFD7E3FF),
  onApproveContainer: Color(0xFF001B3E),
  sourceError: Color(0xFFFF3226),
  error: Color(0xFFC00006),
  onError: Color(0xFFFFFFFF),
  errorContainer: Color(0xFFFFDAD5),
  onErrorContainer: Color(0xFF410000),
);

CustomColors darkCustomColors = const CustomColors(
  sourceApprove: Color(0xFF2887FF),
  approve: Color(0xFFAAC7FF),
  onApprove: Color(0xFF002F65),
  approveContainer: Color(0xFF00458E),
  onApproveContainer: Color(0xFFD7E3FF),
  sourceError: Color(0xFFFF3226),
  error: Color(0xFFFFB4A9),
  onError: Color(0xFF690001),
  errorContainer: Color(0xFF930003),
  onErrorContainer: Color(0xFFFFDAD5),
);



/// Defines a set of custom colors, each comprised of 4 complementary tones.
///
/// See also:
///   * <https://m3.material.io/styles/color/the-color-system/custom-colors>
@immutable
class CustomColors extends ThemeExtension<CustomColors> {
  const CustomColors({
    required this.sourceApprove,
    required this.approve,
    required this.onApprove,
    required this.approveContainer,
    required this.onApproveContainer,
    required this.sourceError,
    required this.error,
    required this.onError,
    required this.errorContainer,
    required this.onErrorContainer,
  });

  final Color? sourceApprove;
  final Color? approve;
  final Color? onApprove;
  final Color? approveContainer;
  final Color? onApproveContainer;
  final Color? sourceError;
  final Color? error;
  final Color? onError;
  final Color? errorContainer;
  final Color? onErrorContainer;

  @override
  CustomColors copyWith({
    Color? sourceApprove,
    Color? approve,
    Color? onApprove,
    Color? approveContainer,
    Color? onApproveContainer,
    Color? sourceError,
    Color? error,
    Color? onError,
    Color? errorContainer,
    Color? onErrorContainer,
  }) {
    return CustomColors(
      sourceApprove: sourceApprove ?? this.sourceApprove,
      approve: approve ?? this.approve,
      onApprove: onApprove ?? this.onApprove,
      approveContainer: approveContainer ?? this.approveContainer,
      onApproveContainer: onApproveContainer ?? this.onApproveContainer,
      sourceError: sourceError ?? this.sourceError,
      error: error ?? this.error,
      onError: onError ?? this.onError,
      errorContainer: errorContainer ?? this.errorContainer,
      onErrorContainer: onErrorContainer ?? this.onErrorContainer,
    );
  }

  @override
  CustomColors lerp(ThemeExtension<CustomColors>? other, double t) {
    if (other is! CustomColors) {
      return this;
    }
    return CustomColors(
      sourceApprove: Color.lerp(sourceApprove, other.sourceApprove, t),
      approve: Color.lerp(approve, other.approve, t),
      onApprove: Color.lerp(onApprove, other.onApprove, t),
      approveContainer: Color.lerp(approveContainer, other.approveContainer, t),
      onApproveContainer: Color.lerp(onApproveContainer, other.onApproveContainer, t),
      sourceError: Color.lerp(sourceError, other.sourceError, t),
      error: Color.lerp(error, other.error, t),
      onError: Color.lerp(onError, other.onError, t),
      errorContainer: Color.lerp(errorContainer, other.errorContainer, t),
      onErrorContainer: Color.lerp(onErrorContainer, other.onErrorContainer, t),
    );
  }

  /// Returns an instance of [CustomColors] in which the following custom
  /// colors are harmonized with [dynamic]'s [ColorScheme.primary].
  ///   * [CustomColors.sourceApprove]
  ///   * [CustomColors.approve]
  ///   * [CustomColors.onApprove]
  ///   * [CustomColors.approveContainer]
  ///   * [CustomColors.onApproveContainer]
  ///   * [CustomColors.sourceError]
  ///   * [CustomColors.error]
  ///   * [CustomColors.onError]
  ///   * [CustomColors.errorContainer]
  ///   * [CustomColors.onErrorContainer]
  ///
  /// See also:
  ///   * <https://m3.material.io/styles/color/the-color-system/custom-colors#harmonization>
  CustomColors harmonized(ColorScheme dynamic) {
    return copyWith(
      sourceApprove: sourceApprove!.harmonizeWith(dynamic.primary),
      approve: approve!.harmonizeWith(dynamic.primary),
      onApprove: onApprove!.harmonizeWith(dynamic.primary),
      approveContainer: approveContainer!.harmonizeWith(dynamic.primary),
      onApproveContainer: onApproveContainer!.harmonizeWith(dynamic.primary),
      sourceError: sourceError!.harmonizeWith(dynamic.primary),
      error: error!.harmonizeWith(dynamic.primary),
      onError: onError!.harmonizeWith(dynamic.primary),
      errorContainer: errorContainer!.harmonizeWith(dynamic.primary),
      onErrorContainer: onErrorContainer!.harmonizeWith(dynamic.primary),
    );
  }
}