import 'package:get/get.dart';

import '../modules/category/views/category_view.dart';
import '../modules/goodBuy/views/good_buy_view.dart';
import '../modules/home/views/home_view.dart';
import '../modules/shopCart/views/shop_cart_view.dart';
import '../modules/tabs/bindings/tabs_binding.dart';
import '../modules/tabs/views/tabs_view.dart';
import '../modules/user/views/user_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.TABS;

  static final routes = [
    GetPage(
      name: _Paths.TABS,
      page: () => const TabsView(),
      binding: TabsBinding(),
    ),
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
    ),
    GetPage(
      name: _Paths.CATEGORY,
      page: () => const CategoryView(),
    ),
    GetPage(
      name: _Paths.GOOD_BUY,
      page: () => const GoodBuyView(),
    ),
    GetPage(
      name: _Paths.SHOP_CART,
      page: () => const ShopCartView(),
    ),
    GetPage(
      name: _Paths.USER,
      page: () => const UserView(),
    ),
  ];
}
