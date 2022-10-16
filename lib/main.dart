import 'package:flutter/material.dart';
import 'package:louis_moody_ui/pages/sign_up_email/signUp_email.dart';
import 'package:louis_moody_ui/pages/sign_up_faceId/face_id.dart';
import 'package:louis_moody_ui/pages/sign_up_pass/signUp_pass.dart';

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
      home: SignUpFaceIDPage(),
    );
  }
}
