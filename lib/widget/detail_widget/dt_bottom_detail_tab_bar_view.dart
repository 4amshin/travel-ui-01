// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'dt_overviews.dart';
import 'dt_reviews.dart';

class DtBottomDetailTabBarView extends StatelessWidget {
  final TabController? controller;
  final String? hour;
  final String? rating;
  final String? description;
  const DtBottomDetailTabBarView({
    Key? key,
    required this.controller,
    this.hour,
    this.rating,
    this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      margin: const EdgeInsets.only(
        top: 15,
        right: 5,
      ),
      padding: const EdgeInsets.only(left: 5),
      child: TabBarView(
        controller: controller,
        children: [
          DtOverviews(
            hour: hour,
            rating: rating,
            description: description,
          ),
          const DtReviews(),
        ],
      ),
    );
  }
}
