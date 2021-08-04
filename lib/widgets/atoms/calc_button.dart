import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_calculator/assets/colors.dart';
import 'package:getwidget/components/button/gf_button.dart';
import 'package:getwidget/getwidget.dart';

class CalcButton extends StatelessWidget {
  CalcButton({
    Key? key,
    required this.text,
    this.bgColor = CalcColor.NUMBER_BG,
    this.textColor = CalcColor.NUMBER_TEXT,
  }) : super(key: key);

  final String text;

  final Color bgColor;

  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 5),
      child: GFButton(
        text: this.text,
        shape: GFButtonShape.pills,
        color: bgColor,
        textColor: textColor,
        onPressed: () {},
        boxShadow: BoxShadow(
          color: textColor,
        ),
      ),
    );
  }
}
