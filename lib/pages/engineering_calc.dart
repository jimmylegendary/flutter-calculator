import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_calculator/pages/calculator_app_bar.dart';
import 'package:flutter_calculator/pages/calculator_drawer.dart';
import 'package:get/get.dart';
import 'package:get/instance_manager.dart';

class EngineeringCalculator extends GetView<EngineeringCalculatorController> {
  EngineeringCalculator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: CalculatorDrawer(),
        appBar: CalculatorAppBar('공학용 계산기'),
        body: Center(
          child: Text('공학용 계산기'),
        ));
  }
}

class EngineeringCalculatorController extends GetxController {
  @override
  void onInit() {
    super.onInit();
  }
}

class EngineeringCalculatorBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(EngineeringCalculatorController());
  }
}
