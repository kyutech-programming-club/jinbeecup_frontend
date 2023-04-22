import 'package:flutter/material.dart';
import 'package:jinbee/constant/color_constant.dart';
import 'package:jinbee/pages/development/compornent/add_event_page.dart';

class AddButton extends StatelessWidget {
  const AddButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      width: 80,
      child: FloatingActionButton(
        onPressed: () {        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const AddEventPage()));
},
        backgroundColor: ColorConstants.accentColor,
        child: const Icon(Icons.add),
      ),
    );
  }
}
