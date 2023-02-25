import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:travel_ui01/widget/home_widget/hm_16_sight.dart';
import 'package:travel_ui01/widget/home_widget/hm_tc_tab_bar.dart';
import 'package:travel_ui01/widget/home_widget/hm_tc_tab_bar_view.dart';

class HmTopContent extends StatefulWidget {
  const HmTopContent({Key? key}) : super(key: key);

  @override
  State<HmTopContent> createState() => _HmTopContentState();
}

class _HmTopContentState extends State<HmTopContent>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        HmTcTabBar(controller: _tabController),
        const SizedBox(height: 25),
        const Hm16Sight().animate().fade(duration: 850.ms).slideX(
              begin: -0.5,
              duration: 850.ms,
              curve: Curves.easeInOutCubic,
            ),
        HmTcTabBarView(controller: _tabController),
      ],
    );
  }
}
