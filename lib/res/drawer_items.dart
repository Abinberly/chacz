import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
        color: Colors.grey[900],
      ),
      trailing: Icon(
        trailing,
        color: Colors.grey[700],
        size: height * 0.02,
      ),
      title: Text(
        title,
        style: GoogleFonts.poppins(
            fontWeight: FontWeight.normal, color: Colors.grey[900]),
      ),
      onTap: onTap,
    );
  }
}
