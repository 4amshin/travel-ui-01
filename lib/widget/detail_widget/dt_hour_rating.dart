import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../theme/color_theme.dart';

class DtHourRating extends StatelessWidget {
  final String? iconUrl;
  final String? title;
  final String? content;
  const DtHourRating({
    Key? key,
    required this.iconUrl,
    this.title,
    this.content,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 30,
          width: 30,
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.3),
                offset: const Offset(2, 3),
                blurRadius: 3,
                spreadRadius: 0.5,
              ),
            ],
            borderRadius: const BorderRadius.all(
              Radius.circular(10),
            ),
          ),
          child: SvgPicture.asset(
            'assets/icons/$iconUrl',
            color: primary,
          ),
        ),
        const SizedBox(width: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title ?? "title",
              style: const TextStyle(
                fontSize: 9,
                color: Colors.grey,
              ),
            ),
            Text(
              content ?? "content",
              style: const TextStyle(
                fontSize: 13.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
