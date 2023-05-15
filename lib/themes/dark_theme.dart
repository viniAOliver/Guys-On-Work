import 'package:flutter/material.dart';

class MyDarkTheme {
  static const ColorScheme _colorPalette = ColorScheme.dark(
    primary: Color.fromARGB(255, 252, 238, 9),
    onPrimary: Color.fromARGB(255, 5, 10, 14),
    onPrimaryContainer: Color.fromARGB(255, 250, 250, 250),
    secondary: Color.fromARGB(255, 255, 0, 60),
    tertiary: Color.fromARGB(255, 0, 240, 255),
  );

  static get colorPalette => _colorPalette;
  static Gradient secondaryGradient = LinearGradient(
    colors: [
      MyDarkTheme.colorPalette.secondary,
      const Color.fromARGB(255, 255, 0, 0),
    ],
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
  );
}
