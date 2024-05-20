import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:module_category/app/modules/category/views/category_view.dart';
import 'package:module_goodbuy/app/modules/goodbuy/views/goodbuy_view.dart';
import 'package:module_home/app/modules/home/views/home_view.dart';
import 'package:module_shopcart/app/modules/shopcart/views/shopcart_view.dart';
import 'package:module_user/app/modules/user/views/user_view.dart';

import '../controllers/tabs_controller.dart';

class TabsView extends GetView<TabsController> {
  const TabsView({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: PageView(
        physics: const NeverScrollableScrollPhysics(),
        controller: controller.pageController,
        children: _createPages(),
        onPageChanged: (index) {
          controller.currentIndex.value = index;
        },
      ),
      bottomNavigationBar: Obx(() => BottomNavigationBar(
            selectedFontSize: 14,
            unselectedFontSize: 14,
            type: BottomNavigationBarType.fixed,
            items: _createBottomNavigationBarItem(),
            backgroundColor: Colors.grey,
            selectedItemColor: Colors.blue,
            unselectedItemColor: Colors.black,
            currentIndex: controller.currentIndex.value,
            onTap: (index) {
              controller.pageController.jumpToPage(index);
              controller.currentIndex.value = index;
            },
          )),
    );
  }

  List<BottomNavigationBarItem> _createBottomNavigationBarItem() {
    return <BottomNavigationBarItem>[
      const BottomNavigationBarItem(icon: Icon(Icons.home), label: "首页"),
      const BottomNavigationBarItem(icon: Icon(Icons.category), label: "分类"),
      const BottomNavigationBarItem(
          icon: Icon(Icons.card_travel), label: "值得买"),
      const BottomNavigationBarItem(
          icon: Icon(Icons.shopping_cart), label: "购物车"),
      const BottomNavigationBarItem(icon: Icon(Icons.person), label: "个人")
    ];
  }

  List<Widget> _createPages() {
    return <Widget>[
      const HomeView(),
      const CategoryView(),
      const GoodbuyView(),
      const ShopcartView(),
      const UserView()
    ];
  }
}
