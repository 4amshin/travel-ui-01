import 'package:flutter/material.dart';
import 'package:travel_ui01/theme/color_theme.dart';

import '../../model/sights_model.dart';

class HmTcItems extends StatelessWidget {
  const HmTcItems({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: sights.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          final data = sights[index];

          return Container(
            width: 240,
            padding: const EdgeInsets.all(18),
            margin: const EdgeInsets.only(
              right: 20,
              top: 15,
              bottom: 15,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              boxShadow: [
                BoxShadow(
                  color: primary.withOpacity(0.4),
                  offset: const Offset(5, 5),
                  blurRadius: 5,
                  spreadRadius: 2,
                )
              ],
              image: DecorationImage(
                image: AssetImage('assets/images/${data.imgUrl}'),
                fit: BoxFit.cover,
              ),
            ),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Align(
                    alignment: Alignment.topRight,
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Icon(
                        Icons.favorite_border_outlined,
                        size: 20,
                        color: primary,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      data.name!,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 15.0,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
