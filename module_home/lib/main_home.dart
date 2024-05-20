import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'app/routes/home_pages.dart';

void main() {
  runApp(
    GetMaterialApp(
      title: "Application",
      initialRoute: HomePages.INITIAL,
      getPages: HomePages.routes,
    ),
  );
}
