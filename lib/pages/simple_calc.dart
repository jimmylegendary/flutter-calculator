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
              MainScreen(),
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

  resetAll() {
    firstNumber.value = '';
    secondNumber.value = '';
    operation.value = '';
    result.value = '';
    expression.value = '';
  }

  input(String input) {
    expression.value += input;
    print(expression);
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
