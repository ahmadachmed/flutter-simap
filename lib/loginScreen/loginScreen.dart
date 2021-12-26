import 'package:flutter/material.dart';
import 'package:perizinanapp/constants.dart';
import 'package:perizinanapp/loginScreen/components/body.dart';

class LoginScreen extends StatelessWidget {
  static String routeName = "/login";
  const LoginScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: darkBlackColor,
      appBar: AppBar(
        backgroundColor: darkBlackColor,
        title: Text("Login"),
      ),
      body: Body(),
    );
  }
}
