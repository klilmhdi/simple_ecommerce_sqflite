import 'package:flutter/material.dart';
import 'package:ecommerce_firebase/core/constants/colors.dart';

class CustomButton extends StatelessWidget {
  final Color? backgroundColor, forgroundColor;
  final String title;
  final double width, height;
  final VoidCallback? onPressed;

  const CustomButton(
      {this.width = 300,
      this.height = 60,
      this.backgroundColor = Colors.white,
      this.forgroundColor = primaryColor,
      required this.title,
      this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: backgroundColor,
          foregroundColor: forgroundColor,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        ),
        onPressed: onPressed,
        child:
            Text(title, style: TextStyle(fontSize: 20, color: forgroundColor)),
      ),
    );
  }
}
