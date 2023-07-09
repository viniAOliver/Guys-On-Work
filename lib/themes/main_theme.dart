import 'package:flutter/material.dart';

class MyTheme {
  static const ColorScheme _colorPalette = ColorScheme.dark(
    primary: Color.fromARGB(255, 231, 106, 36),
    onPrimary: Color.fromARGB(255, 1, 8, 10),
    onPrimaryContainer: Color.fromARGB(255, 235, 235, 235),
    secondary: Color.fromARGB(255, 251, 188, 66),
    tertiary: Color.fromARGB(255, 28, 69, 149),
    outline: Color.fromARGB(255, 0, 188, 0),
  );

  static get colorPalette => _colorPalette;

  static Gradient dbGradient = LinearGradient(
    colors: [
      MyTheme.colorPalette.primary,
      MyTheme.colorPalette.secondary,
    ],
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
  );

  // Colors scheme of Frieza
  static Color friezaPrimaty = const Color.fromARGB(255, 120, 50, 130);
  static Color friezaSecondary = const Color.fromARGB(255, 254, 254, 254);
  static Color friezaSecondaryShadow = const Color.fromARGB(255, 165, 190, 200);
  static Gradient friezaGradient = LinearGradient(
    colors: [
      MyTheme.friezaSecondaryShadow,
      MyTheme.friezaSecondary,
    ],
    begin: Alignment.bottomLeft,
    end: Alignment.topCenter,
  );

  // Colors scheme of Cell
  static Color cellPrimaty = const Color.fromARGB(255, 235, 245, 245);
  static Color cellSecondary = const Color.fromARGB(255, 120, 150, 50);
  static Color cellSecondaryShadow = const Color.fromARGB(255, 80, 100, 30);
  static Gradient cellGradient = LinearGradient(
    colors: [
      MyTheme.cellSecondaryShadow,
      MyTheme.cellSecondary,
    ],
    begin: Alignment.bottomLeft,
    end: Alignment.topCenter,
  );

  // Colors scheme of Majin Boo
  static Color booPrimaty = const Color.fromARGB(255, 235, 245, 245);
  static Color booSecondary = const Color.fromARGB(255, 255, 160, 180);
  static Color booSecondaryShadow = const Color.fromARGB(255, 225, 100, 120);
  static Gradient booGradient = LinearGradient(
    colors: [
      MyTheme.booSecondaryShadow,
      MyTheme.booSecondary,
    ],
    begin: Alignment.bottomLeft,
    end: Alignment.topCenter,
  );
}
