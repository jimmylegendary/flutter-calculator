import 'package:flutter/cupertino.dart';
import 'package:flutter_calculator/assets/colors.dart';
import 'package:google_fonts/google_fonts.dart';

class ScreenText extends StatelessWidget {
  ScreenText({
    Key? key,
    this.fontSize = 24,
    required this.text,
  }) : super(key: key);

  final String text;
  final double fontSize;
  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: GoogleFonts.rubik(
          textStyle: TextStyle(
            color: CalcColor.SCREEN_TEXT,
            fontSize: fontSize,
          ),
        ));
  }
}
