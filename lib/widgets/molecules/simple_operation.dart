import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_calculator/assets/colors.dart';
import 'package:flutter_calculator/pages/simple_calc.dart';
import 'package:flutter_calculator/widgets/atoms/txt_highlight_btn.dart';
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
              onPressed: () => contoller.del(),
              bgColor: CalcColor.BUTTON_BG_HIGHLIGHT2,
            ),
            CalcTextHLButton(
              text: 'AC',
              onPressed: () => contoller.resetAll(),
              bgColor: CalcColor.BUTTON_BG_HIGHLIGHT2,
            ),
            CalcTextHLButton(
              text: '( )',
              onPressed: () => contoller.input('( )'),
            ),
            CalcTextHLButton(
              text: '=',
              onPressed: () => contoller.calculate(),
            ),
          ],
        ),
      ],
    );
  }
}
