import 'package:flutter/material.dart';
import 'package:tab_indicator_styler/tab_indicator_styler.dart';
import 'package:travel_ui01/widget/detail_widget/dt_bottom_detail_tab_bar.dart';
import 'package:travel_ui01/widget/detail_widget/dt_bottom_detail_tab_bar_view.dart';
import 'package:travel_ui01/widget/detail_widget/dt_bottom_title_price.dart';
import 'package:travel_ui01/widget/detail_widget/dt_overviews.dart';
import 'package:travel_ui01/widget/detail_widget/dt_reviews.dart';

import '../../theme/color_theme.dart';

class DtBottomDetail extends StatefulWidget {
  final String? title;
  final String? price;
  final String? hour;
  final String? rating;
  final String? description;
  const DtBottomDetail({
    Key? key,
    this.hour,
    this.rating,
    this.description,
    this.title,
    this.price,
  }) : super(key: key);

  @override
  State<DtBottomDetail> createState() => _DtBottomDetailState();
}

class _DtBottomDetailState extends State<DtBottomDetail>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height - 380,
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 25,
      ),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      child: ListView(
        children: [
          DtBottomTitlePrice(
            title: widget.title,
            price: widget.price,
          ),
          const SizedBox(height: 25),
          DtBottomDetailTabBar(controller: _tabController),
          DtBottomDetailTabBarView(
            controller: _tabController,
            hour: widget.hour,
            rating: widget.rating,
            description: widget.description,
          )
        ],
      ),
    );
  }
}
