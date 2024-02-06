import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class AppButton extends StatelessWidget {
  final String title;
  final double height;
  final double width;
  final Color titleColor;
  final Color buttonColor;
  final VoidCallback onPressed;
  final Color borderColor;
  final double borderRadius;
  const AppButton(
      {super.key,
      required this.title,
      required this.titleColor,
      required this.buttonColor,
      required this.onPressed,
      required this.borderColor,
      required this.borderRadius,
      required this.height,
      required this.width});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onPressed,
        child: Container(
          height: height,
          width: width,
          margin: const EdgeInsets.symmetric(vertical: 8.0,horizontal: 5),
          decoration: BoxDecoration(
              color: buttonColor,
              border: Border.all(color: borderColor, style: BorderStyle.solid),
              borderRadius: BorderRadius.circular(borderRadius)),
          child: Center(
              child: Text(
            title,
            style: GoogleFonts.poppins(color: titleColor),
          )),
        ));
  }
}
