import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'app/routes/category_pages.dart';

void main() {
  runApp(
    GetMaterialApp(
      title: "Application",
      initialRoute: CategoryPages.INITIAL,
      getPages: CategoryPages.routes,
    ),
  );
}
