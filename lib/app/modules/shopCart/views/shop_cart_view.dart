import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/shop_cart_controller.dart';

class ShopCartView extends GetView<ShopCartController> {
  const ShopCartView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ShopCartView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'ShopCartView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
