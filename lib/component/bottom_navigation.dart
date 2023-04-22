import 'package:flutter/material.dart';
import 'package:jinbee/constant/color_constant.dart';
import 'package:jinbee/pages/development/develop_page.dart';
import 'package:jinbee/pages/event/event_page.dart';
import 'package:jinbee/pages/mypage/my_page.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _PetListPageState();
}

class _PetListPageState extends State<BottomNavigation> {
  var _selectIndex = 0;
  final _pages = [
    const EventPage(),
    const DevelopPage(),
    const MyPage(),
  ];
  void _onTap(int index) {
    setState(() {
      _selectIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: ColorConstants.backgroundColor,
        selectedItemColor: ColorConstants.textColor,
        unselectedItemColor: ColorConstants.textColor,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.event_outlined),
              activeIcon: Icon(Icons.event),
              label: ''),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings_outlined),
              activeIcon: Icon(Icons.settings),
              label: ''),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_outline),
              activeIcon: Icon(Icons.person),
              label: ''),
        ],
        currentIndex: _selectIndex,
        onTap: _onTap,
      ),
    );
  }
}
