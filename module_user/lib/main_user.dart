import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'app/routes/user_pages.dart';

void main() {
  runApp(
    GetMaterialApp(
      title: "Application",
      initialRoute: UserPages.INITIAL,
      getPages: UserPages.routes,
    ),
  );
}
