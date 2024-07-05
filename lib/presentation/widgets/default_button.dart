import 'package:flutter/material.dart';
import 'package:ecommerce_firebase/core/Utilities/size_config.dart';
import 'package:ecommerce_firebase/core/constants/colors.dart';

class DefaultButton extends StatelessWidget {
  final String? text;
  final VoidCallback? onPressed;
  final Color? backgroundColor;
  final Color? forgroundColor;
  final double width, height;

  const DefaultButton(
      {this.text,
      this.onPressed,
      this.backgroundColor = Colors.white,
      this.forgroundColor = primaryColor,
      this.width = 300,
      this.height = 60});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: SizeConfig.getProportionateScreenWidth(width),
        height: SizeConfig.getProportionateScreenHeight(height),
        child: TextButton(
          style: TextButton.styleFrom(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            foregroundColor: Colors.white,
            backgroundColor: backgroundColor,
          ),
          onPressed: onPressed,
          child: Text(
            text!,
            style: TextStyle(
              fontSize: SizeConfig.getProportionateScreenWidth(16),
              color: forgroundColor,
            ),
          ),
        ));
  }
}
