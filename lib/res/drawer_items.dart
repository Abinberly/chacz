import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:make_up/helpers/app_themes.dart';

class DrawerItems extends StatelessWidget {
  final String title;
  final IconData leading;
  final IconData trailing;
  final VoidCallback onTap;
  const DrawerItems(
      {super.key,
      required this.title,
      required this.leading,
      required this.trailing,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    return ListTile(
      leading: Icon(
        leading,
        color: AppThemes.appPurpleColor,
        size: height * 0.025,
      ),
      trailing: Icon(
        trailing,
        color: AppThemes.appPurpleColor,
        size: height * 0.02,
      ),
      title: Text(
        title,
        style: GoogleFonts.poppins(
            fontWeight: FontWeight.normal,
            color: AppThemes.appPurpleColor,
            fontSize: height * 0.025),
      ),
      onTap: onTap,
    );
  }
}
