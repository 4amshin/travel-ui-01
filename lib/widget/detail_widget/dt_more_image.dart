import 'package:flutter/material.dart';

class DtMoreImage extends StatelessWidget {
  final String? imgUrl;
  final bool? isBottom;
  const DtMoreImage({
    Key? key,
    this.isBottom,
    required this.imgUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool _isBottom = isBottom ?? false;
    return Container(
      height: 55,
      width: 55,
      margin: const EdgeInsets.only(top: 7),
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.6),
        borderRadius: const BorderRadius.all(
          Radius.circular(14),
        ),
      ),
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/$imgUrl'),
            fit: BoxFit.cover,
          ),
          borderRadius: const BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        child: _isBottom
            ? Container(
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.3),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                child: const Center(
                  child: Text(
                    "+10",
                    style: TextStyle(
                      fontSize: 10.0,
                      color: Colors.white,
                    ),
                  ),
                ),
              )
            : const SizedBox(),
      ),
    );
  }
}
