import 'package:flutter/material.dart';
import 'package:jinbee/constant/color_constant.dart';
import 'package:jinbee/pages/event/component/event_card.dart';

class EventPage extends StatelessWidget {
  const EventPage({super.key});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        backgroundColor: ColorConstants.backgroundColor,
        appBar: AppBar(
          backgroundColor: ColorConstants.backgroundColor,
          title: const Text('event'),
          automaticallyImplyLeading: false,
        ),
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              children: const [
                EventCard(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
