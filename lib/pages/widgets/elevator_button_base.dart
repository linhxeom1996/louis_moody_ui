import 'package:flutter/material.dart';
import 'package:louis_moody_ui/extensions/color_extension.dart';

class ElevatorButtonBase extends StatelessWidget {
  final String text;
  final TextStyle textStyle;
  const ElevatorButtonBase(
      {Key? key, required this.text, required this.textStyle})
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
        style: textStyle,
      ),
    );
  }
}
