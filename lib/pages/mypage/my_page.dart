import 'package:flutter/material.dart';
import 'package:jinbee/constant/color_constant.dart';

class MyPage extends StatelessWidget {
  const MyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.backgroundColor,
      appBar: AppBar(
        backgroundColor: ColorConstants.backgroundColor,
        title: const Text('mypage'),
      ),
      body: Container(),
    );
  }
}
