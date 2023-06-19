import 'package:flutter/material.dart';

class MyTheme {
  static const ColorScheme _colorPalette = ColorScheme.dark(
    primary: Color.fromARGB(255, 231, 106, 36),
    onPrimary: Color.fromARGB(255, 1, 8, 10),
    onPrimaryContainer: Color.fromARGB(255, 231, 229, 232),
    secondary: Color.fromARGB(255, 251, 188, 66),
    tertiary: Color.fromARGB(255, 28, 69, 149),
    outline: Color.fromARGB(255, 0, 188, 0),
  );

  static get colorPalette => _colorPalette;
  static Gradient primaryGradient = LinearGradient(
    colors: [
      MyTheme.colorPalette.primary,
      MyTheme.colorPalette.secondary,
    ],
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
  );
}
