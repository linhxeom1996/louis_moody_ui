import 'package:flutter/material.dart';
import 'package:louis_moody_ui/extensions/color_extension.dart';
import 'package:louis_moody_ui/extensions/styleText_extension.dart';
import 'package:louis_moody_ui/extensions/text_extension.dart';
import 'package:louis_moody_ui/pages/widgets/elevator_button_base.dart';
import 'package:louis_moody_ui/pages/widgets/text_form_field_base.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final TextEditingController _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Stack(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 160, 20, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    TextSignUp.whats_your_email,
                    style: StyleTxTBase().texttitle,
                  ),
                  SizedBox(height: 10),
                  TextFormFieldBase(
                    textController: _emailController,
                    hintText: TextSignUp.enter_email,
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
                    text: TextSignUp.continu,
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
