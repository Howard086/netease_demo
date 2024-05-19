import 'package:get/get.dart';
import '../modules/user/bindings/user_binding.dart';
import '../modules/user/views/user_view.dart';

part 'user_routes.dart';

class UserPages {
  UserPages._();

  static const INITIAL = Routes.USER;

  static final routes = [
    GetPage(
      name: _Paths.USER,
      page: () => const UserView(),
      binding: UserBinding(),
    ),
  ];
}
