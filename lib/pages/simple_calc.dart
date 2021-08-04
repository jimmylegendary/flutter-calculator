import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_calculator/pages/calculator_app_bar.dart';
import 'package:flutter_calculator/pages/calculator_drawer.dart';
import 'package:flutter_calculator/widgets/molecules/numbers_pad.dart';
import 'package:get/get.dart';
import 'package:get/instance_manager.dart';

class SimpleCalculator extends GetView<SimpleCalculatorController> {
  SimpleCalculator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: CalculatorDrawer(),
        appBar: CalculatorAppBar('계산기'),
        body: Center(
          child: NumbersPad(),
        ));
  }
}

class SimpleCalculatorController extends GetxController {
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
