import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../core/extensions/theme_extensions.dart';
import 'app_color_scheme.dart';

sealed class AppTheme {
  const AppTheme._();

  /// Create the theme from the brightness
  static ThemeData use(Brightness brightness) {
    final bool isLightMode = brightness == Brightness.light;
    final ColorScheme scheme =
        isLightMode ? AppColorScheme.light : AppColorScheme.dark;
    return ThemeData(
      brightness: brightness,
      useMaterial3: true,
      colorScheme: scheme,
      visualDensity: VisualDensity.comfortable,
      typography: Typography.material2021(
        colorScheme: scheme,
        platform: defaultTargetPlatform,
      ),
      primaryColor: scheme.primary,
      primaryTextTheme: GoogleFonts.poppinsTextTheme().apply(
        bodyColor: scheme.primary,
        displayColor: scheme.primary,
      ),
      inputDecorationTheme:
          const InputDecorationTheme().applyTheme(fillColor: scheme.surface),
    );
  }
}
