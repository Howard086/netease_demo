import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'app/routes/shopcart_pages.dart';

void main() {
  runApp(
    GetMaterialApp(
      title: "Application",
      initialRoute: ShopcartPages.INITIAL,
      getPages: ShopcartPages.routes,
    ),
  );
}
