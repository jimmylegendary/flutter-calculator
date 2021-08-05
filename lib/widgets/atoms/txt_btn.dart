import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_calculator/assets/colors.dart';
import 'package:getwidget/components/button/gf_button.dart';
import 'package:getwidget/getwidget.dart';

class CalcTextButton extends StatelessWidget {
  CalcTextButton({
    Key? key,
    required this.text,
    required this.onPressed,
    this.bgColor = CalcColor.NUMBER_BG,
    this.textColor = CalcColor.NUMBER_TEXT,
  }) : super(key: key);

  final String text;

  final Color bgColor;

  final Color textColor;

  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(5),
      child: GFButton(
        text: this.text,
        shape: GFButtonShape.pills,
        color: bgColor,
        textStyle: TextStyle(
          fontWeight: FontWeight.bold,
          color: textColor,
          fontSize: 35,
        ),
        padding: EdgeInsets.symmetric(horizontal: 3),
        size: 100,
        onPressed: () => this.onPressed(),
        boxShadow: BoxShadow(
          color: CalcColor.BUTTON_SHADOW,
        ),
      ),
    );
  }
}
