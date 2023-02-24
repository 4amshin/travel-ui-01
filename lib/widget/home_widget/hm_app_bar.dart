import 'package:flutter/material.dart';

class HmAppBar extends StatelessWidget {
  const HmAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
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
          backgroundColor: Colors.indigoAccent,
          backgroundImage: AssetImage(
            'assets/images/profile.png',
          ),
        ),
      ],
    );
  }
}
