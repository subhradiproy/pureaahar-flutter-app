import 'package:flutter/material.dart';
import 'package:pureaahar/app/constants/app_colors.dart';

/// The ColorScheme made from the app colors

sealed class AppColorScheme {
  const AppColorScheme._();

  /// App's light ColorScheme.
  static final ColorScheme light = ColorScheme.fromSeed(
    seedColor: AppColors.primary,
    error: AppColors.error,
    onSecondary: AppColors.secondary,
  );

  /// App's dark ColorScheme.
  static const ColorScheme dark = ColorScheme.dark(
    primary: AppColors.primary,
    secondary: AppColors.secondary,
    error: AppColors.error,
  );
}
