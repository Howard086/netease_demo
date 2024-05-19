import 'package:get/get.dart';
import 'package:module_category/app/modules/category/controllers/category_controller.dart';
import 'package:module_goodbuy/app/modules/goodbuy/controllers/goodbuy_controller.dart';
import 'package:module_home/app/modules/home/controllers/home_controller.dart';
import 'package:module_shopcart/app/modules/shopcart/controllers/shopcart_controller.dart';
import 'package:module_user/app/modules/user/controllers/user_controller.dart';

import '../controllers/tabs_controller.dart';

class TabsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TabsController>(
      () => TabsController(),
    );

    Get.lazyPut<HomeController>(
      () => HomeController(),
    );

    Get.lazyPut<CategoryController>(
      () => CategoryController(),
    );

    Get.lazyPut<GoodbuyController>(
      () => GoodbuyController(),
    );

    Get.lazyPut<UserController>(
      () => UserController(),
    );

    Get.lazyPut<ShopcartController>(
      () => ShopcartController(),
    );
  }
}
