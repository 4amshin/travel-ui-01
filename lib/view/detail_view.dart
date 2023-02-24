import 'package:flutter/material.dart';
import 'package:travel_ui01/widget/detail_widget/dt_bottom_detail.dart';
import 'package:travel_ui01/widget/detail_widget/dt_top_image.dart';

class DetailView extends StatelessWidget {
  const DetailView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: const [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: DtTopImage(),
          ),
          Positioned(
            top: 410,
            left: 0,
            right: 0,
            child: DtBottomDetail(),
          ),
        ],
      ),
    );
  }
}
