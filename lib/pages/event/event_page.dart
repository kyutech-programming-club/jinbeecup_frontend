import 'package:flutter/material.dart';
import 'package:jinbee/constant/color_constant.dart';
import 'package:jinbee/pages/event/component/add_button.dart';
import 'package:jinbee/pages/event/component/event_card.dart';

class EventPage extends StatelessWidget {
  const EventPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.backgroundColor,
      appBar: AppBar(
        backgroundColor: ColorConstants.backgroundColor,
        title: const Text('event'),
      ),
      body:  Row(
        children: const [
          EventCard(),
        ],
      ),
      floatingActionButton: const AddButton(),
    );
  }
}
