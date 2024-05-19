import 'package:get/get.dart';
import 'package:module_home/app/modules/banner_detail/bindings/banner_detail_binding.dart';
import 'package:module_home/app/modules/banner_detail/views/banner_detail_view.dart';

import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';

part 'home_routes.dart';

class HomePages {
  HomePages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.BANNER_DETAIL,
      page: () => const BannerDetailView(),
      binding: BannerDetailBinding(),
    ),
  ];
}
