import 'package:get/get.dart';

import '../modules/goodbuy/bindings/goodbuy_binding.dart';
import '../modules/goodbuy/views/goodbuy_view.dart';

part 'goodbuy_routes.dart';

class GoodbuyPages {
  GoodbuyPages._();

  static const INITIAL = Routes.GOODBUY;

  static final routes = [
    GetPage(
      name: _Paths.GOODBUY,
      page: () => const GoodbuyView(),
      binding: GoodbuyBinding(),
    ),
  ];
}
