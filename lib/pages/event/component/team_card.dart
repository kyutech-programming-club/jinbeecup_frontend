import 'package:flutter/material.dart';
import 'package:jinbee/constant/color_constant.dart';

class TeamCard extends StatelessWidget {
  const TeamCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      width: 360,
      child: Card(
        child: Center(
          child: Column(
            children: [
              Text(
                '3Dゲーム',
                style: TextStyle(
                  color: ColorConstants.backgroundColor,
                  fontSize: 32,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(
                    Icons.person,
                    size: 80,
                  ),
                  Column(
                    children: [
                      Text(
                        'unity',
                        style: TextStyle(fontSize: 24),
                      ),
                    ],
                  ),
                ],
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: ColorConstants.accentColor),
                onPressed: () {},
                child: Text(
                  '参加したい',
                  style: TextStyle(
                    fontSize: 24,
                    color: ColorConstants.textColor,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
