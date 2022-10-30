import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:louis_moody_ui/extensions/color_extension.dart';
import 'package:louis_moody_ui/extensions/styleText_extension.dart';
import 'package:louis_moody_ui/pages/widgets/appBar_base.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:louis_moody_ui/pages/widgets/elevator_button_base.dart';
import 'package:louis_moody_ui/pages/widgets/text_form_field_base.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        body: Stack(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                children: <Widget>[
                  Text(
                    "welcome_back".tr(),
                    style: StyleTxTBase().texttitle,
                  ),
                  SizedBox(height: 50),
                  TextFormFieldBase(
                    textController: _emailController,
                    hintText: "email_address".tr(),
                    hintStyle: StyleTxTBase().textBlack1,
                  ),
                  SizedBox(height: 7),
                  TextFormFieldBase(
                    textController: _passController,
                    hintText: "password".tr(),
                    hintStyle: StyleTxTBase().textBlack1,
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                width: double.infinity,
                height: 160,
                color: ColorBase.boxGreyColor,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                      width: double.infinity,
                      height: 50,
                      child: ElevatorButtonBase(
                        onPress: () {
                          log("tab login");
                        },
                        text: 'login'.tr(),
                        textStyle: StyleTxTBase().textButtonBlack,
                      ),
                    ),
                    SizedBox(height: 5),
                    TextButton(
                        onPressed: () {
                          log("tab forgot pass");
                        },
                        child: Text(
                          'forgot_pass'.tr(),
                          style: StyleTxTBase().textPink,
                        ))
                  ],
                ),
              ),
            )
          ],
        ));
  }
}
