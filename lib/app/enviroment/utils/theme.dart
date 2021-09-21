import 'package:flutter/material.dart';

class YourTheme {
  static const Color _lightScaffoldColor = Colors.white;
  static const Color _lightPrimaryColor = Colors.white;
  static const Color _lightIconColor = Color(0xFF2f80ED);
  static const Color _lightPrimaryVariantColor = Color(0xFFe5e5e5);
  static const Color _lightColorSchemePrimary = Color(0xfffabc57);
  static const Color _lightAccentColor = Color(0xff2f80ed);

  // static const Color _darkCursorColor = Color(0xff34AD64);
  static const Color _darkAccentColor = Color(0xff34AD64);
  static const Color _darkScaffoldColor = Color(0xff18191A);
  static const Color _darkPrimaryColor = Colors.black;
  static const Color _darkPrimaryVariantColor = Colors.black;
  static const Color _darkIconColor = Colors.white70;
  static const Color _darkColorSchemePrimary = Color(0xfffabc57);

  // final Color primaryDarkIndigo = Color(0xFF2128BD);
  // final Color leafGreen = const Color(0xFF6FCF97);

  // final Color white = Color(0xFFF8F8F8);
  // final Color black = Color(0xFF090719);
  // final Color red = Color(0xFFE73322);

  // final Color secondaryGreen = const Color(0xFF24947B);
  // final Color accentGreen = const Color(0xFFE3FEF8);
  // final Color primaryGray = const Color(0xFF6D7D7C);
  // final Color primaryBlue = const Color(0xFF0075FF);
  // final Color primaryGreen = const Color(0xFF25D59C);

  static final lightTheme = ThemeData(
    scaffoldBackgroundColor: _lightScaffoldColor,
    primaryColor: _lightPrimaryColor,
    iconTheme: const IconThemeData(
      color: _lightIconColor,
    ),
    fontFamily: 'Nunito',
    colorScheme: const ColorScheme.light(
      primaryVariant: _lightPrimaryVariantColor,
      primary: _lightColorSchemePrimary,
      secondary: Color(0xffF5F5F5),
      secondaryVariant: _darkScaffoldColor,
    ).copyWith(secondary: _lightAccentColor),
  );

  static final darkTheme = ThemeData(
    scaffoldBackgroundColor: _darkScaffoldColor,
    primaryColor: _darkPrimaryColor,
    iconTheme: IconThemeData(
      color: _darkIconColor,
    ),
    fontFamily: 'Nunito',
    colorScheme: const ColorScheme.dark(
      primaryVariant: _darkPrimaryVariantColor,
      primary: _darkColorSchemePrimary,
      secondary: Colors.black,
      secondaryVariant: _lightScaffoldColor,
    ).copyWith(secondary: _darkAccentColor),
  );
}
