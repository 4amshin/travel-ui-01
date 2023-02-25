import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:travel_ui01/shared/bottom_snake_bar.dart';
import 'package:travel_ui01/view/bookmark_view.dart';
import 'package:travel_ui01/view/home_view.dart';
import 'package:travel_ui01/view/search_view.dart';
import 'package:travel_ui01/view/setting_view.dart';

import 'bottom_nav_bar.dart';

class BottomNavWrapper extends StatefulWidget {
  const BottomNavWrapper({Key? key}) : super(key: key);

  @override
  State<BottomNavWrapper> createState() => _BottomNavWrapperState();
}

class _BottomNavWrapperState extends State<BottomNavWrapper> {
  int _selectedIndex = 0;

  final List<Widget> _widgetOptions = const <Widget>[
    HomeView(),
    SearchView(),
    BookmarkView(),
    SettingView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomSnakeBar(
        selectedIndex: _selectedIndex,
        onItemSelected: (index) => setState(() {
          _selectedIndex = index;
        }),
      ).animate().fade(duration: 850.ms).slideY(
            begin: 0.5,
            duration: 850.ms,
            curve: Curves.easeInOutCubic,
          ),
    );
  }
}
