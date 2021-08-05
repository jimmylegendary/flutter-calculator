import 'package:flutter/cupertino.dart';
import 'package:flutter_calculator/assets/colors.dart';
import 'package:google_fonts/google_fonts.dart';

class ScreenText extends StatelessWidget {
  ScreenText({
    Key? key,
    this.fontSize = 24,
    this.textColor = CalcColor.BLACK,
    required this.text,
  }) : super(key: key);

  final String text;
  final double fontSize;
  final Color textColor;
  @override
  Widget build(BuildContext context) {
    return Text(text,
        textAlign: TextAlign.right,
        style: GoogleFonts.rubik(
          textStyle: TextStyle(
            color: textColor,
            fontSize: fontSize,
          ),
        ));
  }
}
