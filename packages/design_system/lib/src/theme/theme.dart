import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final ThemeData myTheme = ThemeData(
  brightness: Brightness.light,
  primaryColor: Colors.deepOrange,
  colorScheme: const ColorScheme(
    brightness: Brightness.light,
    primary: Color(0xFF870058),
    onPrimary: Color(0xFFF2D0A4),
    secondary: Color(0xFFA4303F),
    onSecondary: Color(0xFFF2D0A4),
    error: Colors.red,
    onError: Colors.red,
    background: Color(0xFFFFECCC),
    onBackground: Color(0xFFF2D0A4),
    surface: Color(0xFFBDA990),
    onSurface: Color(0xFFBDA990),
  ),
  hintColor: Colors.pinkAccent,
  textTheme: GoogleFonts.cabinTextTheme(),
  buttonTheme: ButtonThemeData(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
    ),
  ),
);
