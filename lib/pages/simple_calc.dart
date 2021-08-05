import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_calculator/pages/calculator_app_bar.dart';
import 'package:flutter_calculator/pages/calculator_drawer.dart';
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
            children: <Widget>[
              Expanded(
                child: MainScreen(),
              ),
              PreviewScreen(),
              SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  NumbersPad(),
                  SimpleOperationPad(),
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
  var result = ''.obs;
  var operation = ''.obs;
  var expression = ''.obs;
  var isBracketOpen = false.obs;
  var isExpressionComplete = false.obs;

  resetAll() {
    firstNumber.value = '';
    secondNumber.value = '';
    operation.value = '';
    result.value = '';
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

  bool calculate() {
    bool res = true;
    if (!isExpressionComplete.value) return false;
    expression.value = expression.value.replaceAll(RegExp(r'x'), '*');

    Parser p = Parser();
    Expression exp = p.parse(expression.value);
    ContextModel cm = ContextModel();
    result.value = exp.evaluate(EvaluationType.REAL, cm).toString();
    expression.value = result.value;

    return res;
  }

  input(String input) {
    if (input == '( )') {
      input = isBracketOpen.value ? ')' : '(';
      isBracketOpen.value = !isBracketOpen.value;
    }

    isExpressionComplete.value = input.isNum;
    expression.value += input;
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
