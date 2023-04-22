import 'package:flutter/material.dart';
import 'package:jinbee/constant/color_constant.dart';

class DevelopCard extends StatelessWidget {
  const DevelopCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      width: 360,
      child: Card(
        child: Column(
          children: [
            const SizedBox(
              height: 8,
            ),
            Text(
              'タイトル',
              style: TextStyle(
                color: ColorConstants.backgroundColor,
                fontSize: 24,
                fontFamily: 'Bold',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
