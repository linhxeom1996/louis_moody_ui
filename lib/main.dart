import 'package:flutter/material.dart';
import 'package:louis_moody_ui/pages/onBoarding/onBoarding_page.dart';
import 'package:louis_moody_ui/pages/sign_up/signUp_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: SignUpPage(),
    );
  }
}
