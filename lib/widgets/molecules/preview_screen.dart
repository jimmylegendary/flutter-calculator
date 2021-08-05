import 'package:flutter/cupertino.dart';
import 'package:flutter_calculator/pages/simple_calc.dart';
import 'package:flutter_calculator/widgets/atoms/screen_text.dart';
import 'package:get/get.dart';

// class PreviewScreen extends GetView<PreviewScreenController> {
//   PreviewScreen({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: Padding(
//         padding: const EdgeInsets.only(right: 12),
//         child: ScreenText(
//           text: ,
//           ),
//         ),
//     );
//   }
// }

// class PreviewScreenController extends GetxController {
//   @override
//   void onInit() {
//     super.onInit();
//   }
// }

// class PreviewScreenBinding extends Bindings {
//   @override
//   void dependencies() {
//     Get.put(PreviewScreenController());
//   }
// }

class PreviewScreen extends StatelessWidget {
  final contoller = Get.find<SimpleCalculatorController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(right: 12),
        child: ScreenText(
          text: contoller.result.value,
        ),
      ),
    );
  }
}
