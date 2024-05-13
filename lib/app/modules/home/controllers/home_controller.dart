import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {

  final scrollController = ScrollController();
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void dispose() {
    super.dispose();
    scrollController.dispose();
  }

  @override
  void onClose() {
    super.onClose();
  }

}
