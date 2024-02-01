import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppThemes {
  static TextStyle appTitle({required double fontSize}) {
    return GoogleFonts.monoton(
        color: const Color(0xFF5c1010), fontSize: fontSize);
  }

  static TextStyle headline2({required double fontSize}) {
    return GoogleFonts.poppins(
      color: Colors.black,
      fontSize: fontSize,
      fontWeight: FontWeight.bold,
    );
  }

  static TextStyle headline3({required double fontSize}) {
    return GoogleFonts.bebasNeue(
      color: const Color(0xFF5c1010),
      fontSize: fontSize,
      fontWeight: FontWeight.bold,
    );
  }
  static TextStyle subtitle1({required double fontSize}) {
    return GoogleFonts.urbanist(
        fontSize: fontSize, fontWeight: FontWeight.normal, color: Colors.black);
  }

  static TextStyle subtitle2({required double fontSize}) {
    return GoogleFonts.poppins(color: Colors.black, fontSize: fontSize);
  }

  static TextStyle body1 ({required double fontSize}) {
    return GoogleFonts.poppins(color:const Color(0xFF5c1010), fontSize: fontSize);
  }

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
  static Color appRedColor = const Color.fromARGB(255, 212, 13, 13);
  static Color appPurpleColor = const Color(0xFF770737);
  static Color appGreyColor = const Color(0xFF616161);
  static Color appBlackColor = const Color(0xFF000000);
  static Color appLightGreyColor = const Color(0xFFE0E0E0);
  static Color applightRedColor = const Color(0xFFFF7F7F);
  static Color appWhiteColor = const Color(0xFFFFFFFF);

}
