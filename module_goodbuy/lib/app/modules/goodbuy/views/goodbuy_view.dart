import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/goodbuy_controller.dart';

class GoodbuyView extends GetView<GoodbuyController> {
  const GoodbuyView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'HomeView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
