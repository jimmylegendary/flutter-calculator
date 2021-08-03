import 'package:flutter/material.dart';
import 'package:flutter_calculator/pages/engineering_calc.dart';
import 'package:get/get.dart';
import 'pages/simple_calc.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: '계산기',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      navigatorKey: Get.key,
      initialRoute: '/simple_calc',
      getPages: [
        GetPage(
          name: '/simple_calc',
          page: () => SimpleCalculator(),
          binding: SimpleCalculatorBinding(),
          transition: Transition.noTransition,
        ),
        GetPage(
          name: '/engineering_calc',
          page: () => EngineeringCalculator(),
          binding: EngineeringCalculatorBinding(),
          transition: Transition.noTransition,
        )
      ],
    );
  }
}
