import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../componet/home_page_header.dart';
import '../../../componet/sliver_refresh_indicator.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        controller: controller.scrollController,
        slivers: <Widget>[
          SliverRefreshIndicator(refresh: (){
            Future.delayed(const Duration(seconds: 3)).then((value) => true);
          }),
          _appBar(),
          SliverList(
            delegate: SliverChildBuilderDelegate((content, index) {
              return Container(
                height: 85,
                alignment: Alignment.center,
                color: Colors.primaries[index % Colors.primaries.length],
                child: Text('$index',style: TextStyle(color: Colors.white,fontSize: 20),),
              );
            }, childCount: 200),
          )

        ],
      ),
    );
  }

  _appBar() {
    return SliverPersistentHeader(
      pinned: true,
      delegate: HomeHeader(
        showBack: false,
        title: '',
        totalNum: 100,
        backGroundColor: Colors.blue,
        collapsedHeight: 50,
        expandedHeight: 100 + 30,
        paddingTop: 30,
      ),
    );
  }
}
