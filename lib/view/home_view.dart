import 'package:flutter/material.dart';
import 'package:travel_ui01/widget/home_widget/hm_app_bar.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        minimum: const EdgeInsets.all(25),
        child: ListView(
          children: [
            HmAppBar(),
          ],
        ),
      ),
    );
  }
}
