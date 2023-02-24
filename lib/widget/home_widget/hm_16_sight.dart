import 'package:flutter/material.dart';

class Hm16Sight extends StatelessWidget {
  const Hm16Sight({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 28),
      child: Text(
        "16 Sight",
        style: TextStyle(
          fontSize: 13.0,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
