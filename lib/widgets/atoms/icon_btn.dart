import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_calculator/assets/colors.dart';
import 'package:getwidget/getwidget.dart';

class CalcIconButton extends StatelessWidget {
  CalcIconButton({
    Key? key,
    required this.icon,
    required this.onPressed,
    this.bgColor = CalcColor.NUMBER_BG,
  }) : super(key: key);

  final Color bgColor;

  final Function onPressed;

  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 5),
      child: GFIconButton(
        shape: GFIconButtonShape.pills,
        color: bgColor,
        icon: Icon(
          icon,
          color: CalcColor.NUMBER_TEXT_HIGHLIGHT,
        ),
        onPressed: () => this.onPressed(),
        // boxShadow: BoxShadow(
        //   color: CalcColor.BUTTON_SHADOW,
        // ),
      ),
    );
  }
}
