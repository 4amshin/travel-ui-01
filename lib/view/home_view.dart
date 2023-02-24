import 'package:flutter/material.dart';
import 'package:travel_ui01/widget/home_widget/hm_app_bar.dart';
import 'package:travel_ui01/widget/home_widget/hm_mid_bottom_content.dart';
import 'package:travel_ui01/widget/home_widget/hm_top_content.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SafeArea(
        child: ListView(
          children: const [
            HmAppBar(),
            HmTopContent(),
            HmMidBottomContent(),
          ],
        ),
      ),
    );
  }
}
