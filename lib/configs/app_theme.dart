import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData theme = ThemeData(
    colorScheme: ColorScheme.fromSeed(
      seedColor: Colors.deepPurple,
    ),
    useMaterial3: true,
  );

  static ThemeData darkTheme = ThemeData(
    colorScheme: ColorScheme.fromSeed(
      seedColor: Colors.deepPurple,
    ),
    useMaterial3: true,
  );

  static Color primary = const Color(0xFF5F67EA);
  static Color secondary = const Color(0xfff6f8ff);
  static Color ctgryBoxColor = const Color(0xFF605CF4);
  static Color iconColor = const Color(0xFF7182f2);
}
