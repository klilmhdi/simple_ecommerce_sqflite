import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ecommerce_firebase/core/Utilities/size_config.dart';

class FormError extends StatelessWidget {
  final List<String?> errors;

  const FormError({required this.errors});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
          errors.length, (index) => formErrorText(error: errors[index]!)),
    );
  }

  Row formErrorText({required String error}) {
    return Row(
      children: [
        SvgPicture.asset(
          "assets/icons/Error.svg",
          height: SizeConfig.getProportionateScreenWidth(14),
          width: SizeConfig.getProportionateScreenWidth(14),
        ),
        SizedBox(
          width: SizeConfig.getProportionateScreenWidth(10),
        ),
        Text(error)
      ],
    );
  }
}
