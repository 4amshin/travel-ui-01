// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:travel_ui01/theme/color_theme.dart';
import 'package:travel_ui01/widget/detail_widget/dt_booking_button.dart';

import 'package:travel_ui01/widget/detail_widget/dt_bottom_detail.dart';
import 'package:travel_ui01/widget/detail_widget/dt_top_image.dart';

import '../model/sights_model.dart';

class DetailView extends StatelessWidget {
  final Sight data;
  const DetailView({
    Key? key,
    required this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: DtTopImage(
              imgUrl: data.imgUrl ?? 'default.jpg',
            ),
          ),
          Positioned(
            top: 410,
            left: 0,
            right: 0,
            child: DtBottomDetail(
              title: data.name,
              price: data.price.toString(),
              hour: data.hours.toString(),
              rating: data.rating.toString(),
              description: data.description,
            ),
          ),
        ],
      ),
      floatingActionButton: const DtBookingButton(),
    );
  }
}
