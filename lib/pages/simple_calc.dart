import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_calculator/pages/calculator_app_bar.dart';
import 'package:flutter_calculator/pages/calculator_drawer.dart';
import 'package:flutter_calculator/widgets/atoms/line_seperator.dart';
import 'package:flutter_calculator/widgets/molecules/main_screen.dart';
import 'package:flutter_calculator/widgets/molecules/numbers_pad.dart';
import 'package:flutter_calculator/widgets/molecules/preview_screen.dart';
import 'package:flutter_calculator/widgets/molecules/simple_operation.dart';
import 'package:get/get.dart';
import 'package:get/instance_manager.dart';
import 'package:math_expressions/math_expressions.dart';

class SimpleCalculator extends GetView<SimpleCalculatorController> {
  SimpleCalculator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: CalculatorDrawer(),
        appBar: CalculatorAppBar('계산기'),
        body: Container(
          padding: EdgeInsets.all(12),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Expanded(
                child: MainScreen(),
                flex: 2,
              ),
              Expanded(
                child: PreviewScreen(),
                flex: 1,
              ),
              SizedBox(height: 20),
              LineSeperator(),
              SizedBox(height: 20),
              Row(
                // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: NumbersPad(),
                    flex: 6,
                  ),
                  Expanded(
                    child: SimpleOperationPad(),
                    flex: 4,
                  )
                ],
              )
            ],
          ),
        ));
  }
}

class SimpleCalculatorController extends GetxController {
  var firstNumber = ''.obs;
  var secondNumber = ''.obs;
  var previewResult = ''.obs;
  var operation = ''.obs;
  var expression = ''.obs;
  var isBracketOpen = false.obs;
  var isExpressionComplete = false.obs;

  resetAll() {
    firstNumber.value = '';
    secondNumber.value = '';
    operation.value = '';
    previewResult.value = '';
    expression.value = '';
    isBracketOpen.value = false;
    isExpressionComplete.value = false;
  }

  del() {
    if (expression.value.length > 0) {
      expression.value =
          expression.value.substring(0, expression.value.length - 1);
    }
  }

  preCalculate() {
    String str = expression.value
        .replaceAll(RegExp(r'x'), '*')
        .replaceAll(RegExp(r'÷'), '/');

    Parser p = Parser();
    Expression exp = p.parse(str);
    ContextModel cm = ContextModel();
    previewResult.value = exp.evaluate(EvaluationType.REAL, cm).toString();
  }

  bool calculate() {
    bool res = true;
    if (!isExpressionComplete.value) return false;

    expression.value = previewResult.value;

    return res;
  }

  input(String input) {
    if (input == '( )') {
      input = isBracketOpen.value ? ')' : '(';
      isBracketOpen.value = !isBracketOpen.value;
    }

    expression.value += input;
  }

  bool buttonClicked(String value) {
    bool res = true;
    switch (value) {
      case 'DEL':
        del();
        break;
      case 'AC':
        resetAll();
        break;
      case '=':
        res = calculate();
        previewResult.value = '';
        break;
      default:
        input(value);
    }
    if (expression.value.length != 0 && value != '=') {
      String str = expression.value.substring(expression.value.length - 1);
      isExpressionComplete.value = str.isNum;

      if (isExpressionComplete.value) {
        preCalculate();
      } else {
        previewResult.value = '';
      }
    }

    return res;
  }

  @override
  void onInit() {
    super.onInit();
  }
}

class SimpleCalculatorBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(SimpleCalculatorController());
  }
}
