import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/banner_detail_controller.dart';

class BannerDetailView extends GetView<BannerDetailController> {
  const BannerDetailView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BannerDetailView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'BannerDetailView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
