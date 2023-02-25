import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:travel_ui01/theme/color_theme.dart';

class HmAppBar extends StatelessWidget {
  const HmAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        left: 25,
        right: 25,
        top: 25,
        bottom: 15,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          Text(
            "Discover",
            style: TextStyle(
              fontSize: 35,
              fontWeight: FontWeight.bold,
            ),
          ),
          CircleAvatar(
            backgroundColor: primary,
            backgroundImage: AssetImage(
              'assets/images/profile.png',
            ),
          ),
        ],
      ),
    ).animate().fade(duration: 850.ms).slideY(
          begin: -0.5,
          duration: 850.ms,
          curve: Curves.easeInOutCubic,
        );
  }
}
