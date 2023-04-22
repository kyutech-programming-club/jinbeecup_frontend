import 'package:flutter/material.dart';
import 'package:jinbee/constant/color_constant.dart';
import 'package:jinbee/pages/event/event_detail_page.dart';

class EventCard extends StatelessWidget {
  const EventCard({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const EventDetailPage()));
      },
      child: SizedBox(
        height: 200,
        width: 200,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          color: ColorConstants.textColor,
          child: Column(
            children: [
              const SizedBox(
                height: 8,
              ),
              const Text(
                'ジンベエカップ',
                style: TextStyle(
                  fontSize: 24,
                  fontFamily: 'bold',
                ),
              ),
              const Text('ハックツハッカソン'),
              const Text('4月22日〜23日'),
              Padding(
                padding: const EdgeInsets.only(
                  left: 16.0,
                  right: 8.0,
                ),
                child: Row(
                  children: [
                    Icon(
                      Icons.location_on,
                      color: ColorConstants.accentColor,
                    ),
                    const Text(
                      'エンジニアカフェ',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
