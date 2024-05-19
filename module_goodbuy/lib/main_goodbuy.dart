import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'app/routes/goodbuy_pages.dart';

void main() {
  runApp(
    GetMaterialApp(
      title: "Application",
      initialRoute: GoodbuyPages.INITIAL,
      getPages: GoodbuyPages.routes,
    ),
  );
}
