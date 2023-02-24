import 'package:flutter/material.dart';

class HmTabBarViewText extends StatelessWidget {
  final String? title;
  const HmTabBarViewText({
    Key? key,
    this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        title ?? "Title",
        style: const TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
