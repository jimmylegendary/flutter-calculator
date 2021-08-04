import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_calculator/widgets/atoms/calc_button.dart';

class NumbersPad extends StatefulWidget {
  NumbersPad({Key? key}) : super(key: key);

  @override
  _NumbersPadState createState() => _NumbersPadState();
}

class _NumbersPadState extends State<NumbersPad> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            CalcButton(text: '7'),
            CalcButton(text: '9'),
            CalcButton(text: '8'),
          ],
        ),
        Row(
          children: [
            CalcButton(text: '6'),
            CalcButton(text: '5'),
            CalcButton(text: '4'),
          ],
        ),
        Row(
          children: [
            CalcButton(text: '3'),
            CalcButton(text: '2'),
            CalcButton(text: '1'),
          ],
        ),
        Row(
          children: [
            CalcButton(text: '+/-'),
            CalcButton(
              text: '0',
            ),
            CalcButton(text: '.'),
          ],
        )
      ],
    );
  }
}
