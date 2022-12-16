import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyCustomButton extends StatelessWidget {
  final String text;
  final Color color;
  final Color textColor;
  final onPress;
  MyCustomButton(
      {required this.text,
      required this.color,
      required this.textColor,
      required this.onPress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        // height: 30,
        // width: 80,
        child: Center(
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: GoogleFonts.assistant(
              textStyle: TextStyle(
                  fontSize: 16.0,
                  color: textColor,
                  fontWeight: FontWeight.w700),
            ),
          ),
        ),
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(10)),
      ),
    );
    // );
  }
}
