import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce_firebase/core/constants/colors.dart';

import 'components/sign_up_body.dart';

class SignUpScreen extends StatelessWidget {
  static const String routeName = "/signUp";

  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Sign With Us",
          style: TextStyle(color: CupertinoColors.white),
        ),
        centerTitle: true,
        backgroundColor: primaryColor,
        leading: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: const Icon(
              Icons.arrow_back_ios_new,
              color: CupertinoColors.white,
            )),
      ),
      body: const SignUpBody(),
    );
  }
}
