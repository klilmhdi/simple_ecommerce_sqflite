import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce_firebase/core/Utilities/size_config.dart';
import 'package:ecommerce_firebase/core/constants/colors.dart';

import 'components/otp_body.dart';

class OTPScreen extends StatelessWidget {
  static const String routeName = "/otp";

  const OTPScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: primaryColor,
        title: const Text(
          "OTP Verification",
          style: TextStyle(color: CupertinoColors.white),
        ),
        leading: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: const Icon(
              Icons.arrow_back_ios_new,
              color: CupertinoColors.white,
            )),
      ),
      body: const OTPBody(),
    );
  }
}
