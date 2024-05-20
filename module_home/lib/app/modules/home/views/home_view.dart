import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:get/get.dart';

import '../../../componet/home_page_header.dart';
import '../../../componet/sliver_refresh_indicator.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarBrightness: Brightness.dark,
        statusBarIconBrightness: Brightness.dark,
      ),
      child: Scaffold(
        body: CustomScrollView(
          controller: controller.scrollController,
          slivers: <Widget>[
            SliverRefreshIndicator(refresh: () {
              Future.delayed(const Duration(seconds: 3)).then((value) => true);
            }),
            _appBar(context),
            SliverList(
              delegate: SliverChildBuilderDelegate((content, index) {
                return Container(
                  height: 85,
                  alignment: Alignment.center,
                  color: Colors.primaries[index % Colors.primaries.length],
                  child: Text(
                    '$index',
                    style: const TextStyle(color: Colors.white, fontSize: 20),
                  ),
                );
              }, childCount: 200),
            )
          ],
        ),
      ),
    );
  }

  _appBar(context) {
    return SliverPersistentHeader(
      pinned: true,
      delegate: HomeHeader(
        showBack: false,
        title: '',
        totalNum: 100,
        collapsedHeight: 50,
        backGroundColor: Colors.white,
        expandedHeight: 100 + getStatusBarHeight(context),
        paddingTop: getStatusBarHeight(context),
      ),
    );
  }

  double getStatusBarHeight(context) {
    return MediaQuery.of(context).padding.top;
  }
}
