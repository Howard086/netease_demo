import 'package:get/get.dart';

import '../controllers/banner_detail_controller.dart';

class BannerDetailBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BannerDetailController>(
      () => BannerDetailController(),
    );
  }
}
