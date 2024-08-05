import 'package:flutter/widgets.dart';

/// App Colors used in the application
sealed class AppColors {
  const AppColors._();

  // Brand Colors
  static const Color primary = Color(0xFF03B334);
  static const Color secondary = Color(0xFFFF7916);
  static const Color white = Color(0xFFFFFFFF);

  // State Colors
  static const Color success = Color(0xFF35B369);
  static const Color warning = Color(0xFFEBBC2E);
  static const Color info = Color(0xFF2F80ED);
  static const Color error = Color(0xFFED3A3A);

  // Text Colors
  static const Color textPrimary = Color(0xFF141414);
  static const Color textSecondary = Color(0xFF3A3A3A);

  // Gray Shades
  static const Color gray1 = Color(0xFFCFCFCF);
  static const Color gray2 = Color(0xFFA7A7A7);
}
