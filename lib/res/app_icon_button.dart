import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AppIconButton extends StatelessWidget {
  final VoidCallback onPressed;
  final IconData icon;
  final Color iconColor;
  final Color splashColor;
  const AppIconButton(
      {super.key,
      required this.onPressed,
      required this.icon,
      required this.iconColor,
      required this.splashColor});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      splashColor: splashColor,
        onPressed: onPressed,
        icon: Icon(
          icon,
          color: iconColor,
        ),
        );
  }
}
