import 'package:flutter/material.dart';
import 'package:ecommerce_firebase/core/constants/colors.dart';
import 'components/forgot_password_body.dart';

class ForgotPasswordScreen extends StatelessWidget {
  static const String routeName = "/forgot_password";
  const ForgotPasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Reset Password"),
        centerTitle: true,
        backgroundColor: primaryColor,
      ),
      body: const ForgotPasswordBody(),
    );
  }
}
