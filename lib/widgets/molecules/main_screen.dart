import 'package:flutter/cupertino.dart';
import 'package:flutter_calculator/pages/simple_calc.dart';
import 'package:flutter_calculator/widgets/atoms/screen_text.dart';
import 'package:get/get.dart';

class MainScreen extends StatelessWidget {
  final controller = Get.find<SimpleCalculatorController>();
  @override
  Widget build(BuildContext context) {
    return Obx(() => Container(
          child: Padding(
            padding: const EdgeInsets.only(right: 12),
            child: ScreenText(
              text: controller.expression.value,
              fontSize: 46,
            ),
          ),
          alignment: Alignment.bottomRight,
        ));
  }
}
