import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppThemes {
  static TextStyle appTitle =
      GoogleFonts.monoton(color: const Color(0xFF5c1010));

  static TextStyle headline2 = GoogleFonts.poppins(
    color: Colors.black,
    fontWeight: FontWeight.bold,
  );

  static TextStyle headline3 = const TextStyle(
    fontSize: 22,
    fontWeight: FontWeight.bold,
    color: Colors.black,
  );

  static TextStyle subtitle1 = GoogleFonts.urbanist(
      fontSize: 14, fontWeight: FontWeight.normal, color: Colors.black);

  static TextStyle subtitle2 =
      GoogleFonts.poppins(color: Colors.black, fontSize: 8);

  static TextStyle body1 = const TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.normal,
    color: Colors.black,
  );

  static TextStyle body2 = const TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.normal,
    color: Colors.black,
  );

  static TextStyle button = const TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.bold,
    color: Colors.white,
  );
  static Color appPrimaryColor = const Color.fromARGB(255, 212, 13, 13);
  static Color appColor = const Color(0xFF770737);
  static Color appGreyColor = const Color(0xFF616161);
  static Color appBlackColor = const Color(0xFF000000);
}
