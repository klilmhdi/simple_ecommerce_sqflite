import 'package:flutter/material.dart';
import 'package:ecommerce_firebase/core/Utilities/size_config.dart';
import 'package:ecommerce_firebase/core/constants/colors.dart';
import 'package:ecommerce_firebase/presentation/screens/sign_up/sign_up_screen.dart';

class NoAccountText extends StatelessWidget {
  const NoAccountText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Don’t have an account? ",
          style: TextStyle(fontSize: SizeConfig.getProportionateScreenWidth(16)),
        ),
        GestureDetector(
          onTap: () => Navigator.pushNamed(context, SignUpScreen.routeName),
          child: Text(
            "Sign Up",
            style: TextStyle(
                fontSize: SizeConfig.getProportionateScreenWidth(16),
                color: primaryColor),
          ),
        ),
      ],
    );
  }
}
