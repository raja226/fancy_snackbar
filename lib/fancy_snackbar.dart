import 'package:flutter/material.dart';

class FancySnackbar {
  static void show(BuildContext context, String message,
      {Widget? logo,
      Color? backgroundColor,
      Color? textColor,
      int seconds = 2}) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        backgroundColor: backgroundColor,
        content: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (logo != null) logo,
            const SizedBox(width: 8),
            Text(
              message,
              style: TextStyle(color: textColor),
            ),
          ],
        ),
        behavior: SnackBarBehavior.floating,
        duration: Duration(seconds: seconds),
        margin: const EdgeInsets.all(8.0),
      ),
    );
  }
}
