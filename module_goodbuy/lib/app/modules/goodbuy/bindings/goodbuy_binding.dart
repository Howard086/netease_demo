import 'package:get/get.dart';

import '../controllers/goodbuy_controller.dart';

class GoodbuyBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<GoodbuyController>(
      () => GoodbuyController(),
    );
  }
}
