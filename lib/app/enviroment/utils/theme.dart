import 'package:flutter/material.dart';

class YourTheme {
  static const Color _lightScaffoldColor = Colors.white;
  static const Color _lightPrimaryColor = Colors.white;
  static const Color _lightIconColor = Color(0xFF2f80ED);
  static const Color _lightPrimaryVariantColor = Color(0xFFe5e5e5);
  static const Color _lightColorSchemePrimary = Color(0xFF2128BD);
  static const Color _lightAccentColor = Color(0xff2f80ed);

  // static const Color _darkCursorColor = Color(0xff34AD64);
  static const Color _darkAccentColor = Color(0xff34AD64);
  static const Color _darkScaffoldColor = Color(0xff18191A);
  static const Color _darkPrimaryColor = Color(0xff151b27);
  static const Color _darkPrimaryVariantColor = Colors.black;
  static const Color _darkIconColor = Colors.white70;
  static const Color _darkColorSchemePrimary = Color(0xff25c0b7);

  static final lightTheme = ThemeData(
    scaffoldBackgroundColor: _lightScaffoldColor,
    primaryColor: _lightPrimaryColor,
    iconTheme: const IconThemeData(
      color: _lightIconColor,
    ),
    fontFamily: 'Nunito',
    textTheme: _lightTextTheme,
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
    textTheme: _darkTextTheme,
    colorScheme: const ColorScheme.dark(
      primaryVariant: _darkPrimaryVariantColor,
      primary: _darkColorSchemePrimary,
      secondary: Colors.black,
      secondaryVariant: _lightScaffoldColor,
    ).copyWith(secondary: _darkAccentColor),
  );

  static const TextTheme _lightTextTheme = TextTheme(
    headline4: TextStyle(
      fontFamily: 'Nunito',
      fontWeight: FontWeight.w700,
      color: Colors.black,
      fontSize: 24.0,
    ),
    headline5: TextStyle(
      fontWeight: FontWeight.w600,
      fontFamily: 'Nunito',
      fontSize: 24,
    ),
    headline6: TextStyle(
      fontSize: 32,
      fontWeight: FontWeight.w700,
      fontFamily: 'Nunito',
      color: Color(0xFF2128BD),
    ),
    bodyText1: TextStyle(
      fontFamily: 'Nunito',
      fontWeight: FontWeight.w400,
      color: Colors.black,
      fontSize: 14.0,
    ),
    bodyText2: TextStyle(
      fontFamily: 'Nunito',
      fontWeight: FontWeight.w600,
      color: Colors.black,
      fontSize: 18.0,
    ),
    headline1: TextStyle(
      fontFamily: 'Nunito',
      color: Colors.grey,
      fontSize: 14.0,
    ),
    caption: TextStyle(
      fontFamily: 'Nunito',
      fontWeight: FontWeight.w400,
      color: Color(0xFF2128BD),
      fontSize: 18.0,
    ),
  );

  static const TextTheme _darkTextTheme = TextTheme(
    headline4: TextStyle(
      fontWeight: FontWeight.w600,
      fontSize: 18,
    ),
    headline5: TextStyle(
      fontWeight: FontWeight.w700,
      fontSize: 24,
    ),
    headline6: TextStyle(
      fontSize: 28,
      fontWeight: FontWeight.w600,
      color: Color(0xFF2128BD),
    ),
    bodyText1: TextStyle(
      fontSize: 14,
      color: Colors.white,
    ),
    bodyText2: TextStyle(
      fontSize: 18,
      color: Colors.white,
      fontWeight: FontWeight.w600,
    ),
    headline1: TextStyle(
      fontFamily: 'Nunito',
      color: Colors.grey,
      fontSize: 14.0,
    ),
    caption: TextStyle(
      fontWeight: FontWeight.w400,
      color: Color(0xFF2128BD),
      fontSize: 18.0,
    ),
  );
}
