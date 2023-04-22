import 'package:flutter/material.dart';
import 'package:jinbee/constant/color_constant.dart';
import 'package:jinbee/pages/development/compornent/field_tag.dart';
// ignore: depend_on_referenced_packages
import 'package:intl/intl.dart';
import 'dart:async';

class AddEventPage extends StatefulWidget {
  const AddEventPage({super.key});

  @override
  State<AddEventPage> createState() => _AddEventPageState();
}

class _AddEventPageState extends State<AddEventPage> {
  var _labelText = 'Select Date';

  Future<void> _selectDate(BuildContext context) async {
    final DateTime selected = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2023),
      lastDate: DateTime(2060),
    ) as DateTime;
    setState(() {
      _labelText = (DateFormat.yMMMd()).format(selected);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorConstants.backgroundColor,
      ),
      backgroundColor: ColorConstants.backgroundColor,
      body: Center(
        child: Column(
          children: [
            SizedBox(
              width: 400,
              child: TextFormField(
                style: TextStyle(
                  color: ColorConstants.textColor,
                  fontSize: 32,
                ),
                decoration: InputDecoration(
                  hintText: 'タイトル',
                  hintStyle: TextStyle(color: ColorConstants.textColor),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: ColorConstants.textColor,
                    ),
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: ColorConstants.textColor,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const FieldTag(),
                ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    '保存',
                    style: TextStyle(color: ColorConstants.textColor),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  children: [
                    Text(
                      _labelText,
                      style: TextStyle(
                          fontSize: 18, color: ColorConstants.textColor),
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.date_range,
                        color: ColorConstants.accentColor,
                      ),
                      onPressed: () => _selectDate(context),
                    ),
                  ],
                ),
                Text(
                  '〜',
                  style: TextStyle(
                    color: ColorConstants.textColor,
                    fontSize: 24,
                  ),
                ),
                Row(
                  children: [
                    Text(
                      _labelText,
                      style: TextStyle(
                          fontSize: 18, color: ColorConstants.textColor),
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.date_range,
                        color: ColorConstants.accentColor,
                      ),
                      onPressed: () => _selectDate(context),
                    ),
                  ],
                ),
              ],
            ),
            Text(
              '[詳細]',
              style: TextStyle(
                color: ColorConstants.textColor,
                fontSize: 16,
              ),
            ),
            TextFormField(
              style: TextStyle(fontSize: 24, color: ColorConstants.textColor),
              keyboardType: TextInputType.multiline,
              maxLines: 7,
            )
          ],
        ),
      ),
    );
  }
}
