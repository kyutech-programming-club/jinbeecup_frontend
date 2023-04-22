import 'package:flutter/material.dart';
import 'package:jinbee/constant/color_constant.dart';
import 'package:jinbee/pages/event/component/team_card.dart';

class EventDetailPage extends StatelessWidget {
  const EventDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.backgroundColor,
      appBar: AppBar(
        backgroundColor: ColorConstants.backgroundColor,
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              'ジンベエカップ',
              style: TextStyle(
                fontSize: 32,
                color: ColorConstants.textColor,
              ),
            ),
            Text(
              'ハックツハッカソン',
              style: TextStyle(
                fontSize: 24,
                color: ColorConstants.textColor,
              ),
            ),
            Text(
              '4月22日〜23日',
              style: TextStyle(
                fontSize: 24,
                color: ColorConstants.textColor,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 96),
              child: Row(
                children: [
                  Icon(
                    Icons.location_on,
                    color: ColorConstants.accentColor,
                    size: 32,
                  ),
                  Text(
                    'エンジニアカフェ',
                    style: TextStyle(
                      fontSize: 24,
                      color: ColorConstants.textColor,
                    ),
                  ),
                ],
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: ColorConstants.accentColor,
              ),
              onPressed: () {},
              child: Text(
                'チームを作る',
                style: TextStyle(
                  color: ColorConstants.textColor,
                  fontSize: 24,
                ),
              ),
            ),
            SingleChildScrollView(
              child: Column(
                children: const [
                  TeamCard(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
