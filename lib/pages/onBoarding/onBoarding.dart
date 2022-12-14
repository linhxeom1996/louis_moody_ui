import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:louis_moody_ui/extensions/color_extension.dart';
import 'package:louis_moody_ui/extensions/styleText_extension.dart';
import 'package:louis_moody_ui/pages/widgets/elevator_button_base.dart';
import 'package:easy_localization/easy_localization.dart';

class OnBoardingPage extends StatefulWidget {
  OnBoardingPage({Key? key}) : super(key: key);

  @override
  _OnBoardingPageState createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/bg_onBoard.png"),
            fit: BoxFit.fill,
          ),
        ),
        child: Stack(
          children: [
            SizedBox(
              width: double.infinity,
              height: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 100),
                  Text(
                    'stakin'.tr(),
                    style: StyleTxTBase().texttitle,
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                padding: EdgeInsets.fromLTRB(25, 30, 25, 30),
                color: ColorBase.boxGreyColor,
                width: double.infinity,
                height: 160,
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      width: double.infinity,
                      height: 50,
                      child: ElevatorButtonBase(
                        onPress: () {},
                        text: 'login'.tr(),
                        textStyle: StyleTxTBase().textButtonBlack,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        log("tab login");
                      },
                      child: Container(
                        width: double.infinity,
                        height: 50,
                        alignment: Alignment.center,
                        color: Colors.transparent,
                        child: RichText(
                          text: TextSpan(
                            text: 'already_have_an_acco'.tr(),
                            style: StyleTxTBase().textBlack1,
                            children: [
                              TextSpan(
                                text: 'login'.tr(),
                                style: StyleTxTBase().textPink,
                              )
                            ],
                          ),
                        ),
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
