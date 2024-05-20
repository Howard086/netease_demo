import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/shopcart_controller.dart';

class ShopcartView extends GetView<ShopcartController> {
  const ShopcartView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shopcart View'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'Shopcart View is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
