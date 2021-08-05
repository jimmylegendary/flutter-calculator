import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_calculator/assets/colors.dart';
import 'package:flutter_calculator/widgets/atoms/txt_btn.dart';

class CalcTextHLButton extends CalcTextButton {
  CalcTextHLButton({
    Key? key,
    text,
    onPressed,
    bgColor = CalcColor.BUTTON_BG_HIGHLIGHT1,
    textColor = CalcColor.BUTTON_TEXT_HIGHLIGHT1,
  }) : super(
          text: text,
          onPressed: onPressed,
          bgColor: bgColor,
          textColor: textColor,
        );

  @override
  Widget build(BuildContext context) {
    return super.build(context);
  }
}
