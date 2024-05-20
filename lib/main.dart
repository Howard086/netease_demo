import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:get/get.dart';
import 'package:module_category/app/routes/category_pages.dart';
import 'package:module_goodbuy/app/routes/goodbuy_pages.dart';
import 'package:module_home/app/routes/home_pages.dart';
import 'package:module_shopcart/app/routes/shopcart_pages.dart';
import 'package:module_user/app/routes/user_pages.dart';

import 'app/routes/app_pages.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent, // 设置状态栏颜色为透明
    ),
  );
  runApp(
    GetMaterialApp(
      theme: ThemeData(
        primaryColor: Colors.white,
        appBarTheme: const AppBarTheme(
            backgroundColor: Colors.white,
            titleTextStyle: TextStyle(fontSize: 18, color: Colors.black)),
      ),
      title: "Application",
      defaultTransition: Transition.cupertino,
      initialRoute: AppPages.INITIAL,
      getPages: initRoutes(),
    ),
  );
}

List<GetPage<dynamic>> initRoutes() {
  return HomePages.routes
    ..addAll(CategoryPages.routes)
    ..addAll(GoodbuyPages.routes)
    ..addAll(ShopcartPages.routes)
    ..addAll(UserPages.routes)
    ..addAll(AppPages.routes);
}
