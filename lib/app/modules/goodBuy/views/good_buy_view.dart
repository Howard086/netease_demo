import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/good_buy_controller.dart';

class GoodBuyView extends GetView<GoodBuyController> {
  const GoodBuyView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GoodBuyView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'GoodBuyView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
