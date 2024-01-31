import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:make_up/helpers/app_themes.dart';

import '../helpers/strings.dart';

class DrawerHeaderWidget extends StatelessWidget {
  const DrawerHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return DrawerHeader(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            Strings.appTitle,
            style: GoogleFonts.monoton(
                color: AppThemes.appColor, fontSize: height * 0.04),
          ),
          Text(
            Strings.appCaption,
            style: GoogleFonts.poppins(
                color: Colors.black, fontSize: height * 0.015),
          ),
        ],
      ),
    );
  }
}