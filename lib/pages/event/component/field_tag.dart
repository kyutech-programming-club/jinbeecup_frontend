import 'package:flutter/material.dart';
import 'package:jinbee/constant/color_constant.dart';

class FieldTag extends StatefulWidget {
  const FieldTag({super.key});

  @override
  State<FieldTag> createState() => _FieldTagState();
}

class _FieldTagState extends State<FieldTag> {
  String? isSelectedItem = 'web';

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100,
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: ColorConstants.textColor,
        ),
        child: DropdownButton(
          items: [
            DropdownMenuItem(
              child: Text(' Web'),
              value: 'web',
            ),
            DropdownMenuItem(
              child: Text(' ゲーム'),
              value: 'game',
            ),
            DropdownMenuItem(
              child: Text(' アプリ'),
              value: 'app',
            ),
            DropdownMenuItem(
              child: Text(' その他'),
              value: 'other',
            ),
          ],
          onChanged: (String? value) {
            setState(() {
              isSelectedItem = value;
            });
          },
          value: isSelectedItem,
        ),
      ),
    );
  }
}
