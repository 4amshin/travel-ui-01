// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../../theme/color_theme.dart';

class DtIconButton extends StatelessWidget {
  final IconData? icon;
  const DtIconButton({
    Key? key,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.pop(context),
      child: CircleAvatar(
        radius: 20,
        backgroundColor: Colors.white.withOpacity(0.7),
        child: CircleAvatar(
          radius: 17,
          backgroundColor: Colors.white,
          child: Icon(
            icon,
            color: primary,
            size: 20,
          ),
        ),
      ),
    );
  }
}
