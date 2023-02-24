import 'package:flutter/material.dart';
import 'package:tab_indicator_styler/tab_indicator_styler.dart';
import 'package:travel_ui01/theme/color_theme.dart';

class HmTcTabBar extends StatelessWidget {
  final TabController? controller;
  const HmTcTabBar({
    Key? key,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      margin: const EdgeInsets.symmetric(
        horizontal: 12,
      ),
      child: TabBar(
        controller: controller,
        indicator: DotIndicator(
          color: primary,
          distanceFromCenter: 16,
          radius: 3,
          paintingStyle: PaintingStyle.fill,
        ),
        dividerColor: Colors.transparent,
        isScrollable: true,
        labelColor: primary,
        labelStyle: const TextStyle(
          fontWeight: FontWeight.w500,
        ),
        indicatorSize: TabBarIndicatorSize.tab,
        indicatorPadding: const EdgeInsets.symmetric(
          horizontal: 5,
          vertical: 6,
        ),
        physics: const BouncingScrollPhysics(),
        tabs: const [
          Tab(text: 'Sights'),
          Tab(text: 'Tours'),
          Tab(text: 'Adventures'),
        ],
      ),
    );
  }
}
