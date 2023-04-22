import 'package:flutter/material.dart';
import 'package:jinbee/constant/color_constant.dart';
import 'package:jinbee/pages/development/compornent/add_button.dart';
import 'package:jinbee/pages/development/compornent/develop_card.dart';

class DevelopPage extends StatelessWidget {
  const DevelopPage({super.key});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Text(
            'develop',
            style: TextStyle(
              color: ColorConstants.textColor,
            ),
          ),
          backgroundColor: ColorConstants.backgroundColor,
        ),
        backgroundColor: ColorConstants.backgroundColor,
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                DevelopCard(),
              ],
            ),
          ),
        ),
        floatingActionButton: const AddButton(),
      ),
    );
  }
}
