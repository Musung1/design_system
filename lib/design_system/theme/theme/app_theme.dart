import 'package:design_project/design_system/theme/theme/app_color.dart';
import 'package:flutter/material.dart';

import 'app_color_scheme.dart';


class AppTheme {
  static ThemeData light = ThemeData(
    useMaterial3: true,
    colorScheme: lightColorScheme,
  );

  static ThemeData dark = ThemeData(
    useMaterial3: true,
    colorScheme: darkColorScheme,
  );
}