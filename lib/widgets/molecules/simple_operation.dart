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
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: CalcTextHLButton(
                text: '÷',
                onPressed: () => contoller.input('÷'),
              ),
            ),
            Expanded(
              child: CalcTextHLButton(
                text: 'DEL',
                onPressed: () => contoller.del(),
                bgColor: CalcColor.BUTTON_BG_HIGHLIGHT2,
              ),
            ),
          ],
        ),
        Row(
          children: [
            Expanded(
              child: CalcTextHLButton(
                text: 'X',
                onPressed: () => contoller.input('x'),
              ),
            ),
            Expanded(
              child: CalcTextHLButton(
                text: 'AC',
                onPressed: () => contoller.resetAll(),
                bgColor: CalcColor.BUTTON_BG_HIGHLIGHT2,
              ),
            ),
          ],
        ),
        Row(
          children: [
            Expanded(
              child: CalcTextHLButton(
                text: '/',
                onPressed: () => contoller.input('/'),
              ),
            ),
            Expanded(
              child: CalcTextHLButton(
                text: '( )',
                onPressed: () => contoller.input('( )'),
              ),
            ),
          ],
        ),
        Row(
          children: [
            Expanded(
              child: CalcTextHLButton(
                text: '+',
                onPressed: () => contoller.input('+'),
              ),
            ),
            Expanded(
              child: CalcTextHLButton(
                text: '=',
                onPressed: () => contoller.calculate(),
                bgColor: Color(0xFF179B17),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
