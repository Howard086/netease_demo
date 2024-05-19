import 'package:get/get.dart';

import '../modules/shopcart/bindings/shopcart_binding.dart';
import '../modules/shopcart/views/shopcart_view.dart';

part 'shopcart_routes.dart';

class ShopcartPages {
  ShopcartPages._();

  static const INITIAL = Routes.SHOPCART;

  static final routes = [
    GetPage(
      name: _Paths.SHOPCART,
      page: () => const ShopcartView(),
      binding: ShopcartBinding(),
    ),
  ];
}
