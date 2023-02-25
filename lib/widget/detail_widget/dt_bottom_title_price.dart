import 'package:flutter/material.dart';

class DtBottomTitlePrice extends StatelessWidget {
  final String? title;
  final String? price;
  const DtBottomTitlePrice({
    Key? key,
    this.title,
    this.price,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          width: 130,
          child: Text(
            title ?? "Title",
            style: const TextStyle(
              height: 1.01,
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Row(
          children: [
            Text(
              "\$$price",
              style: const TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(width: 2),
            const Text(
              "/person",
              style: TextStyle(
                fontSize: 12,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
