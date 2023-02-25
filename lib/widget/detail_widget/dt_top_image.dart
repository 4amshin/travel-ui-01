// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:travel_ui01/shared/page_navigation.dart';
import 'package:travel_ui01/view/home_view.dart';

import 'package:travel_ui01/widget/detail_widget/dt_icon_button.dart';
import 'package:travel_ui01/widget/detail_widget/dt_more_image.dart';

class DtTopImage extends StatelessWidget {
  final String? imgUrl;
  final String? heroTag;
  const DtTopImage({
    Key? key,
    required this.imgUrl,
    this.heroTag,
  }) : super(key: key);

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
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/$imgUrl'),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              DtIconButton(
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const PageNavigation(),
                    ),
                  );
                },
                icon: Icons.arrow_back_ios_new_rounded,
              ),
              const DtIconButton(icon: Icons.favorite_border_rounded),
            ],
          ).animate().fade().slideY(
                begin: -1,
                duration: 850.ms,
                curve: Curves.easeInOutCubic,
              ),
          Align(
            alignment: Alignment.bottomRight,
            child: Column(
              children: [
                const DtMoreImage(
                  imgUrl: 'more2.jpg',
                )
                    .animate()
                    .fade()
                    .slideY(
                      delay: 200.ms,
                      begin: 2,
                      duration: 850.ms,
                      curve: Curves.easeInOutCubic,
                    )
                    .then()
                    .shimmer(duration: 1.5.seconds),
                const DtMoreImage(
                  imgUrl: 'more3.jpg',
                )
                    .animate()
                    .fade()
                    .slideY(
                      delay: 100.ms,
                      begin: 1.5,
                      duration: 850.ms,
                      curve: Curves.easeInOutCubic,
                    )
                    .then()
                    .shimmer(
                      duration: 1.5.seconds,
                      delay: 100.ms,
                    ),
                const DtMoreImage(
                  isBottom: true,
                  imgUrl: 'more1.jpg',
                )
                    .animate()
                    .fade()
                    .slideY(
                      begin: 0.5,
                      duration: 850.ms,
                      curve: Curves.easeInOutCubic,
                    )
                    .then()
                    .shimmer(
                      duration: 1.5.seconds,
                      delay: 200.ms,
                    ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
