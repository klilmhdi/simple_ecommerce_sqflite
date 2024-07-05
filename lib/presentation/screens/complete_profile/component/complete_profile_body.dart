import 'package:flutter/material.dart';
import 'package:ecommerce_firebase/core/Utilities/size_config.dart';
import 'package:ecommerce_firebase/presentation/screens/sign_up/components/sign_up_form.dart';

import 'complete_profile_form.dart';

class CompleteProfileBody extends StatelessWidget {
   late ScreenArgs userData;
   CompleteProfileBody({Key? key,required this.userData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final String userName = userData.email.split("@")[0];
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: SizeConfig.getProportionateScreenWidth(20)),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: SizeConfig.screenHeight * 0.03),
                Text("Complete ($userName) Profile",style: TextStyle(
                    color: Colors.black,
                    fontSize: SizeConfig.getProportionateScreenWidth(28),
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2
                ),
                ),
                const Text(
                  "Please complete your information",
                ),
                SizedBox(height: SizeConfig.screenHeight * 0.06),
                CompleteProfileForm(userData: userData),
                SizedBox(height: SizeConfig.getProportionateScreenHeight(30)),
                Text(
                  "By continuing your confirm that you agree with our Term and Condition",
                  style: Theme.of(context).textTheme.titleSmall,
                ),
                SizedBox(height: SizeConfig.getProportionateScreenHeight(30)),
              ],
            )
          ),
        ),
      ),
    );
  }
}
