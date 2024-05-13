import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TabsController extends GetxController {
  RxInt currentIndex = 0.obs;
  PageController pageController = PageController(initialPage: 0);

  final count = 0.obs;

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();

  }

  @override
  void dispose() {
    super.dispose();
    pageController.dispose();
  }
}
