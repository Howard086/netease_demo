import 'package:get/get.dart';

import '../controllers/shopcart_controller.dart';


class ShopcartBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ShopcartController>(
      () => ShopcartController(),
    );
  }
}
