import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_calculator/assets/colors.dart';
import 'package:flutter_calculator/pages/simple_calc.dart';
import 'package:flutter_calculator/widgets/atoms/txt_btn.dart';
import 'package:flutter_calculator/widgets/atoms/icon_btn.dart';
import 'package:flutter_calculator/widgets/atoms/txt_highlight_btn.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class SimpleOperationPad extends StatelessWidget {
  final contoller = Get.find<SimpleCalculatorController>();
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: [
            CalcTextHLButton(
              text: '/',
              onPressed: () => contoller.input('/'),
            ),
            CalcTextHLButton(
              text: '-',
              onPressed: () => contoller.input('-'),
            ),
            CalcTextHLButton(
              text: 'x',
              onPressed: () => contoller.input('x'),
            ),
            CalcTextHLButton(
              text: '+',
              onPressed: () => contoller.input('+'),
            ),
          ],
        ),
        Column(
          children: [
            CalcTextHLButton(
              text: 'DEL',
              onPressed: () => contoller.input('DEL'),
              bgColor: CalcColor.BUTTON_BG_HIGHLIGHT2,
            ),
            CalcTextHLButton(
              text: 'AC',
              onPressed: () => contoller.input('AC'),
              bgColor: CalcColor.BUTTON_BG_HIGHLIGHT2,
            ),
            CalcTextHLButton(
              text: '=',
              onPressed: () => contoller.input('='),
            ),
            CalcIconButton(icon: FontAwesomeIcons.calculator, onPressed: () {}),
          ],
        ),
      ],
    );
  }
}
