import 'package:flutter/material.dart';
import 'package:travel_ui01/widget/detail_widget/dt_icon_button.dart';
import 'package:travel_ui01/widget/detail_widget/dt_more_image.dart';

class DtTopImage extends StatelessWidget {
  const DtTopImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 440,
      padding: const EdgeInsets.only(
        top: 20,
        left: 20,
        right: 20,
        bottom: 40,
      ),
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/japan.jpg'),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              DtIconButton(icon: Icons.arrow_back_ios_new_rounded),
              DtIconButton(icon: Icons.favorite_border_rounded),
            ],
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Column(
              children: const [
                DtMoreImage(),
                DtMoreImage(),
                DtMoreImage(isBottom: true),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
