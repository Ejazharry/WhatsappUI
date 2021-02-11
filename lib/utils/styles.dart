import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

/// A chunk of styles used in the application
class Styles {
  static const Map<int, Color> primaryColorSwatch = {
    50: Color.fromRGBO(199, 61, 93, .1),
    100: Color.fromRGBO(199, 61, 93, .2),
    200: Color.fromRGBO(199, 61, 93, .3),
    300: Color.fromRGBO(199, 61, 93, .4),
    400: Color.fromRGBO(199, 61, 93, .5),
    500: Color.fromRGBO(199, 61, 93, .6),
    600: Color.fromRGBO(199, 61, 93, .7),
    700: Color.fromRGBO(199, 61, 93, .8),
    800: Color.fromRGBO(199, 61, 93, .9),
    900: Color.fromRGBO(199, 61, 93, 1),
  };

  static Color primaryColorRgb = Color.fromRGBO(199, 61, 93, 1);

  static Color primaryColor = Color(
    primaryColorHex,
  );

  static Color backgroundColor = Colors.white;

  static int primaryColorHex = 0xFFC73D5D;

  static String baseFontFamily = GoogleFonts.ptSans().fontFamily;

  static IconThemeData iconThemeData = IconThemeData(
    color: primaryColor,
  );

  static ButtonThemeData buttonThemeData = ButtonThemeData(
    buttonColor: Colors.white,
    shape: RoundedRectangleBorder(),
  );

  // Different style used in the application
  static TextStyle bodyText1 = GoogleFonts.ptSans();
  static TextStyle bodyText2 = GoogleFonts.ptSans();
  static TextStyle subtitle1 = GoogleFonts.ptSans();
  static TextStyle subtitle2 = GoogleFonts.ptSans();
  static TextStyle button = GoogleFonts.ptSans();
  static TextStyle caption = GoogleFonts.ptSans();
  static TextStyle headline1 = GoogleFonts.ptSans();
  static TextStyle headline2 = GoogleFonts.ptSans();
  static TextStyle headline3 = GoogleFonts.ptSans();
  static TextStyle headline4 = GoogleFonts.ptSans();
  static TextStyle headline5 = GoogleFonts.ptSans();
  static TextStyle headline6 = GoogleFonts.ptSans();
}
