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
            Expanded(
                child: CalcTextButton(
                    text: '7', onPressed: () => contoller.buttonClicked('7'))),
            Expanded(
                child: CalcTextButton(
                    text: '8', onPressed: () => contoller.buttonClicked('8'))),
            Expanded(
                child: CalcTextButton(
                    text: '9', onPressed: () => contoller.buttonClicked('9'))),
          ],
        ),
        Row(
          children: [
            Expanded(
                child: CalcTextButton(
                    text: '4', onPressed: () => contoller.buttonClicked('4'))),
            Expanded(
                child: CalcTextButton(
                    text: '5', onPressed: () => contoller.buttonClicked('5'))),
            Expanded(
                child: CalcTextButton(
                    text: '6', onPressed: () => contoller.buttonClicked('6'))),
          ],
        ),
        Row(
          children: [
            Expanded(
                child: CalcTextButton(
                    text: '1', onPressed: () => contoller.buttonClicked('1'))),
            Expanded(
                child: CalcTextButton(
                    text: '2', onPressed: () => contoller.buttonClicked('2'))),
            Expanded(
                child: CalcTextButton(
                    text: '3', onPressed: () => contoller.buttonClicked('3'))),
          ],
        ),
        Row(
          children: [
            Expanded(
                child: CalcTextButton(
                    text: '.', onPressed: () => contoller.buttonClicked('.'))),
            Expanded(
                child: CalcTextButton(
                    text: '0', onPressed: () => contoller.buttonClicked('0'))),
            Expanded(
                child: CalcTextButton(
                    text: '00',
                    onPressed: () => contoller.buttonClicked('00'))),
          ],
        )
      ],
    );
  }
}
