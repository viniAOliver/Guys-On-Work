import 'package:flutter/material.dart';

class AppTheme {
  // Setting static colors variables to be used in the application.
  static const Color primaryColor = Color(0xFF24292E);
  static const Color secondaryColor = Color(0xFF7F03BB);
  static const Color tertiaryColor = Color(0xFFFAFBFC);
  static const Color quaternaryColor = Color(0xFF2B3137);
  static const Color errorColor = Color(0xFFD84339);

  /// Sets the dark theme of the application.
  static final ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    primaryColor: primaryColor,
    cardColor: quaternaryColor,
    dividerColor: quaternaryColor,
    colorScheme: const ColorScheme.dark(
      primary: primaryColor,
      secondary: secondaryColor,
      background: primaryColor,
      error: errorColor,
      errorContainer: errorColor,
    ),
    scaffoldBackgroundColor: primaryColor,
    textTheme: _buildTextTheme(),
    buttonTheme: _buildButtonTheme(),
    appBarTheme: _buildAppBarTheme(),
    bottomNavigationBarTheme: _buildBottomNavigationBarTheme(),
  );

  /// Sets the text theme.
  static TextTheme _buildTextTheme() {
    return const TextTheme(
      titleLarge: TextStyle(
        color: tertiaryColor,
        fontFamily: 'Sora',
        fontSize: 24,
        fontWeight: FontWeight.bold,
      ),
      titleMedium: TextStyle(
        color: tertiaryColor,
        fontFamily: 'Sora',
        fontSize: 16,
        fontWeight: FontWeight.w500,
      ),
      titleSmall: TextStyle(
        color: tertiaryColor,
        fontFamily: 'Sora',
        fontSize: 14,
        fontWeight: FontWeight.w500,
      ),
      bodyLarge: TextStyle(
        color: tertiaryColor,
        fontFamily: 'Inter',
        fontSize: 16,
        fontWeight: FontWeight.w600,
      ),
      bodyMedium: TextStyle(
        color: tertiaryColor,
        fontFamily: 'Inter',
        fontSize: 14,
        fontWeight: FontWeight.w500,
      ),
      bodySmall: TextStyle(
        color: tertiaryColor,
        fontFamily: 'Inter',
        fontSize: 12,
        fontWeight: FontWeight.w400,
      ),
    );
  }

  /// Sets the button theme.
  static ButtonThemeData _buildButtonTheme() {
    return const ButtonThemeData(
      buttonColor: secondaryColor,
      splashColor: tertiaryColor,
      disabledColor: quaternaryColor,
      textTheme: ButtonTextTheme.primary,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(8)),
        side: BorderSide(color: secondaryColor),
      ),
    );
  }

  /// Sets the app bar theme.
  static AppBarTheme _buildAppBarTheme() {
    return const AppBarTheme(
      backgroundColor: quaternaryColor,
      elevation: 2,
      centerTitle: true,
      titleTextStyle: TextStyle(
        color: tertiaryColor,
        fontFamily: 'Inter',
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  /// Sets the bottom navigation bar theme.
  static BottomNavigationBarThemeData _buildBottomNavigationBarTheme() {
    return const BottomNavigationBarThemeData(
      backgroundColor: quaternaryColor,
      selectedItemColor: secondaryColor,
      unselectedItemColor: quaternaryColor,
      elevation: 2,
    );
  }
}
