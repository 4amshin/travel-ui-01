import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

import '../../theme/color_theme.dart';

class DtBookingButton extends StatelessWidget {
  const DtBookingButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        left: 40,
        right: 8,
      ),
      height: 65,
      decoration: const BoxDecoration(
        color: primary,
        borderRadius: BorderRadius.all(
          Radius.circular(16),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: const [
          SizedBox(width: 20),
          Text(
            "Book now",
            style: TextStyle(
              fontSize: 18,
              color: Colors.white,
            ),
          ),
          Icon(
            Icons.arrow_forward_rounded,
            size: 20,
            color: Colors.white,
          )
        ],
      ),
    ).animate().fade().slideY(
          begin: 1,
          duration: 850.ms,
          curve: Curves.easeInOutCubic,
        );
  }
}
