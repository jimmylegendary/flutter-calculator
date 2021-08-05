import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_calculator/pages/simple_calc.dart';
import 'package:flutter_calculator/widgets/atoms/icon_btn.dart';
import 'package:flutter_calculator/widgets/atoms/txt_btn.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
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
                    text: '7', onPressed: () => contoller.input('7'))),
            Expanded(
                child: CalcTextButton(
                    text: '8', onPressed: () => contoller.input('9'))),
            Expanded(
                child: CalcTextButton(
                    text: '9', onPressed: () => contoller.input('8'))),
          ],
        ),
        Row(
          children: [
            Expanded(
                child: CalcTextButton(
                    text: '4', onPressed: () => contoller.input('6'))),
            Expanded(
                child: CalcTextButton(
                    text: '5', onPressed: () => contoller.input('5'))),
            Expanded(
                child: CalcTextButton(
                    text: '6', onPressed: () => contoller.input('4'))),
          ],
        ),
        Row(
          children: [
            Expanded(
                child: CalcTextButton(
                    text: '1', onPressed: () => contoller.input('3'))),
            Expanded(
                child: CalcTextButton(
                    text: '2', onPressed: () => contoller.input('2'))),
            Expanded(
                child: CalcTextButton(
                    text: '3', onPressed: () => contoller.input('1'))),
          ],
        ),
        Row(
          children: [
            Expanded(
                child: CalcTextButton(
                    text: '.', onPressed: () => contoller.input('.'))),
            Expanded(
                child: CalcTextButton(
                    text: '0', onPressed: () => contoller.input('0'))),
            Expanded(
                child: CalcTextButton(
                    text: '00', onPressed: () => contoller.input('00'))),
          ],
        )
      ],
    );
  }
}
