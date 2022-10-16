import 'package:flutter/material.dart';
import 'package:louis_moody_ui/extensions/color_extension.dart';

class TextFormFieldBase extends StatelessWidget {
  final TextEditingController textController;
  final String? hintText;
  final TextStyle? hintStyle;
  const TextFormFieldBase(
      {Key? key, required this.textController, this.hintText, this.hintStyle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: textController,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: hintStyle,
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: ColorBase.underLineColor),
        ),
      ),
    );
  }
}
