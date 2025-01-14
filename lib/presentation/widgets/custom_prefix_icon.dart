import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ecommerce_firebase/core/Utilities/size_config.dart';

class CustomPrefixIcon extends StatelessWidget {
  final String svgIconPath;

  const CustomPrefixIcon({required this.svgIconPath});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(0, 0, SizeConfig.getProportionateScreenWidth(20), SizeConfig.getProportionateScreenWidth(20)),
      child: SvgPicture.asset(
        svgIconPath,
        height: SizeConfig.getProportionateScreenWidth(8),
      ),
    );
  }
}
