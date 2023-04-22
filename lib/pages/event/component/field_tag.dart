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
          items: const [
            DropdownMenuItem(
              value: 'web',
              child: Text(' Web'),
            ),
            DropdownMenuItem(
              value: 'game',
              child: Text(' ゲーム'),
            ),
            DropdownMenuItem(
              value: 'app',
              child: Text(' アプリ'),
            ),
            DropdownMenuItem(
              value: 'other',
              child: Text(' その他'),
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
