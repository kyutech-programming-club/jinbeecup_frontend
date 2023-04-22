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
        width: 360,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          color: ColorConstants.textColor,
          child: Center(
            child: Column(
              children: [
                const SizedBox(
                  height: 8,
                ),
                const Text(
                  'ジンベエカップ',
                  style: TextStyle(
                    fontSize: 32,
                    fontFamily: 'bold',
                  ),
                ),
                const Text(
                  'ハックツハッカソン',
                  style: TextStyle(fontSize: 24),
                ),
                const Text(
                  '4月22日〜23日',
                  style: TextStyle(fontSize: 24),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 64,
                  ),
                  child: Center(
                    child: Row(
                      children: [
                        Icon(
                          Icons.location_on,
                          color: ColorConstants.accentColor,
                        ),
                        const Text(
                          'エンジニアカフェ',
                          style: TextStyle(
                            fontSize: 24,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
