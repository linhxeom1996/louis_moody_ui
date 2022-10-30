import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:louis_moody_ui/pages/home/home_page.dart';
import 'package:louis_moody_ui/pages/login/login_page.dart';
import 'package:louis_moody_ui/pages/onBoarding/onBoarding.dart';
import 'package:louis_moody_ui/pages/sign_up_pass/signUp_pass.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  runApp(EasyLocalization(
    child: MyApp(),
    supportedLocales: [
      Locale('en', 'US'),
    ],
    path: "assets/translations",
    useOnlyLangCode: true,
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      title: 'Flutter Demo',
      home: HomePage(),
    );
  }
}
