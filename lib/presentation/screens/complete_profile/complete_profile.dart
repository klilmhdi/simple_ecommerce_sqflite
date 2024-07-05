import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce_firebase/core/constants/colors.dart';
import 'package:ecommerce_firebase/presentation/screens/sign_up/components/sign_up_form.dart';
import 'component/complete_profile_body.dart';

class CompleteProfileScreen extends StatelessWidget {
  static const String routeName ="/complete_profile";
  const CompleteProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final userData = ModalRoute.of(context)!.settings.arguments  as ScreenArgs;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: primaryColor,
        title: const Text("Complete Your Profile", style: TextStyle(color: CupertinoColors.white),),
        leading: IconButton(onPressed: () => Navigator.pop(context), icon: Icon(Icons.arrow_back_ios_new, color: CupertinoColors.white,)),
      ),
      body:  CompleteProfileBody(userData: userData),
    );
  }
}
