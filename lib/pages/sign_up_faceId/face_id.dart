import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:louis_moody_ui/extensions/color_extension.dart';
import 'package:louis_moody_ui/extensions/styleText_extension.dart';
import 'package:louis_moody_ui/pages/widgets/appBar_base.dart';
import 'package:louis_moody_ui/pages/widgets/elevator_button_base.dart';
import 'package:easy_localization/easy_localization.dart';

class SignUpFaceIDPage extends StatefulWidget {
  const SignUpFaceIDPage({Key? key}) : super(key: key);

  @override
  _SignUpFaceIDPageState createState() => _SignUpFaceIDPageState();
}

class _SignUpFaceIDPageState extends State<SignUpFaceIDPage> {
  final TextEditingController _emailController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    super.dispose();
  }

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
              child: Container(
                child: Text(
                  'would_you_like'.tr(),
                  style: StyleTxTBase().texttitle,
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: double.infinity,
                height: 160,
                color: ColorBase.boxGreyColor,
                padding: EdgeInsets.all(20),
                child: Column(
                  children: [
                    SizedBox(
                      height: 50,
                      width: double.infinity,
                      child: ElevatorButtonBase(
                        onPress: () {
                          log("user faceId");
                        },
                        text: 'user_faceId'.tr(),
                        textStyle: StyleTxTBase().textButtonBlack,
                      ),
                    ),
                    SizedBox(height: 5),
                    TextButton(
                      onPressed: () {
                        log("text press");
                      },
                      child: Text(
                        'nope_tks'.tr(),
                        style: StyleTxTBase().textPink,
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
