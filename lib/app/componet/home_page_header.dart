import 'package:flutter/material.dart';

import '../constant/colors.dart';
import '../constant/fonts.dart';

class HomeHeader extends SliverPersistentHeaderDelegate {
  final double? collapsedHeight;
  final double? expandedHeight;
  final double? paddingTop;
  final Widget? child;
  final String? title;
  final bool showBack;
  final num totalNum;
  final Color backGroundColor;

  HomeHeader({
    this.collapsedHeight,
    this.expandedHeight,
    this.paddingTop,
    this.child,
    this.title,
    this.backGroundColor = backColor,
    this.totalNum = 0,
    this.showBack = false,
  });

  @override
  // TODO: implement maxExtent
  double get maxExtent => this.expandedHeight!;

  @override
  // TODO: implement minExtent
  double get minExtent => this.collapsedHeight! + this.paddingTop!;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) {
    // TODO: implement shouldRebuild
    return true;
  }

  double verOffset = 30.0;

  Color logoColor(shrinkOffset) {
    if (shrinkOffset <= verOffset) {
      final int alpha = (shrinkOffset / verOffset * 255).clamp(0, 255).toInt();
      return Color.fromARGB(alpha, 255, 255, 255);
    } else {
      return Colors.black;
    }
  }

  Color logoColorCopy(shrinkOffset) {
    print(shrinkOffset);
    if (shrinkOffset == 0) {
      return Colors.black;
    }
    if (shrinkOffset <= verOffset) {
      final int alpha = (shrinkOffset / verOffset * 255).clamp(0, 255).toInt();
      return Color.fromARGB(1 - alpha, 0, 0, 0);
    } else {
      return Colors.transparent;
    }
  }

  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    // TODO: implement build
    var paddingTop = MediaQuery.of(context).padding.top;
    var isShowLogo = true;
    var searchOffsetR = 0.0;
    if (shrinkOffset < verOffset) {
      if (shrinkOffset < 10) {
        isShowLogo = true;
      } else {
        isShowLogo = false;
      }
      searchOffsetR = shrinkOffset * 3.3;
    } else {
      searchOffsetR = verOffset * 3.3;
      isShowLogo = false;
    }

    return Container(
      decoration: BoxDecoration(color: backGroundColor),
      height: maxExtent,
      width: double.infinity,
      child: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          //定位,相当于绝对布局
          Positioned(
            child: _buildTops(context, shrinkOffset, isShowLogo),
            top: paddingTop,
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: searchOffsetR,
            child: GestureDetector(
              child: _searchWidget(),
              onTap: () {

              },
            ),
          ),
        ],
      ),
    );
  }

  _searchWidget() {
    return Container(
      height: 50,
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Container(
        padding: const EdgeInsets.only(left: 8),
        margin: const EdgeInsets.symmetric(horizontal: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: backRed),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/search_edit_icon.png',
              width: 14,
              height: 14,
            ),
            const SizedBox(width: 5),
            Expanded(
              child: Text(
                '搜索商品，共$totalNum款好物',
                style: num12Grey,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Container(
              height: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 12),
              decoration: BoxDecoration(
                color: backRed,
                borderRadius: BorderRadius.circular(20),
              ),
              alignment: Alignment.center,
              child: const Text(
                '搜索',
                style: t14whiteBold,
              ),
            )
          ],
        ),
      ),
    );
  }

  _buildTops(BuildContext context, double shrinkOffset, bool isShowLogo) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 50,
      child: Stack(
        children: [
          Positioned(
            top: 0,
            left: 10,
            bottom: 0,
            child: Container(
              alignment: Alignment.center,
              child: Stack(
                children: [
                  Positioned(
                    top: 0,
                    bottom: 0,
                    child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 12),
                      child: Image.asset(
                        'assets/images/logo_and_text.png',
                        color: logoColorCopy(shrinkOffset),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 200,
                    height: 50,
                    // color: logoColor(shrinkOffset),
                  )
                ],
              ),
            ),
          ),
          Positioned(
            right: 10,
            top: 0,
            bottom: 0,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                GestureDetector(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/dcp.png',
                        width: 20,
                        height: 20,
                        color: const Color(0xFF333333),
                      ),
                      const Text(
                        '扫一扫',
                        style: t10black,
                      ),
                    ],
                  ),
                  onTap: () {

                  },
                ),
                const SizedBox(width: 20),
                GestureDetector(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/ic_tab_cart_normal.png',
                        width: 20,
                        height: 22,
                        color: const Color(0xFF333333),
                      ),
                      const Text(
                        '购物车',
                        style: t10black,
                      ),
                    ],
                  ),
                  onTap: () {

                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
