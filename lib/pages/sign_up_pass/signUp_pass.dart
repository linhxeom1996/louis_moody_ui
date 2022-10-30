import 'package:flutter/material.dart';
import 'package:louis_moody_ui/extensions/color_extension.dart';
import 'package:louis_moody_ui/extensions/styleText_extension.dart';
import 'package:louis_moody_ui/pages/widgets/appBar_base.dart';
import 'package:louis_moody_ui/pages/widgets/elevator_button_base.dart';
import 'package:louis_moody_ui/pages/widgets/text_form_field_base.dart';
import 'package:easy_localization/easy_localization.dart';

class SignUpPassPage extends StatefulWidget {
  const SignUpPassPage({Key? key}) : super(key: key);

  @override
  _SignUpPassPageState createState() => _SignUpPassPageState();
}

class _SignUpPassPageState extends State<SignUpPassPage> {
  final TextEditingController _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBarBase(
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.arrow_back_ios_new,
            color: Colors.black,
            size: 22,
          ),
        ),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Stack(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 100, 20, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'choo_your_pass'.tr(),
                    style: StyleTxTBase().texttitle,
                  ),
                  SizedBox(height: 10),
                  TextFormFieldBase(
                    textController: _emailController,
                    hintText: 'at_least'.tr(),
                    hintStyle: StyleTxTBase().textBlack1,
                  )
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                padding: EdgeInsets.fromLTRB(20, 50, 20, 50),
                width: double.infinity,
                height: 160,
                color: ColorBase.boxGreyColor,
                child: SizedBox(
                  child: ElevatorButtonBase(
                    onPress: () {},
                    text: 'continu'.tr(),
                    textStyle: StyleTxTBase().textButtonBlack,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
