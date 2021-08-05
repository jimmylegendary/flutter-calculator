import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_calculator/pages/simple_calc.dart';
import 'package:flutter_calculator/widgets/atoms/txt_btn.dart';
import 'package:get/get.dart';

class NumbersPad extends StatelessWidget {
  final contoller = Get.find<SimpleCalculatorController>();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            CalcTextButton(text: '7', onPressed: () => contoller.input('7')),
            CalcTextButton(text: '9', onPressed: () => contoller.input('9')),
            CalcTextButton(text: '8', onPressed: () => contoller.input('8')),
          ],
        ),
        Row(
          children: [
            CalcTextButton(text: '6', onPressed: () => contoller.input('6')),
            CalcTextButton(text: '5', onPressed: () => contoller.input('5')),
            CalcTextButton(text: '4', onPressed: () => contoller.input('4')),
          ],
        ),
        Row(
          children: [
            CalcTextButton(text: '3', onPressed: () => contoller.input('3')),
            CalcTextButton(text: '2', onPressed: () => contoller.input('2')),
            CalcTextButton(text: '1', onPressed: () => contoller.input('1')),
          ],
        ),
        Row(
          children: [
            CalcTextButton(text: '+/-', onPressed: () => contoller.input('-')),
            CalcTextButton(text: '0', onPressed: () => contoller.input('0')),
            CalcTextButton(text: '.', onPressed: () => contoller.input('.')),
          ],
        )
      ],
    );
  }
}
