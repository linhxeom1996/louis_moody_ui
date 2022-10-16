import 'package:flutter/material.dart';
import 'package:louis_moody_ui/extensions/color_extension.dart';

class ElevatorButtonBase extends StatelessWidget {
  final String text;
  final Color colorText;
  final double? fontSize;
  const ElevatorButtonBase(
      {Key? key, required this.text, required this.colorText, this.fontSize})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        primary: ColorBase.bgWhiteColor,
      ),
      child: Text(
        text,
        style: TextStyle(
          color: colorText,
          fontSize: fontSize,
        ),
      ),
    );
  }
}
