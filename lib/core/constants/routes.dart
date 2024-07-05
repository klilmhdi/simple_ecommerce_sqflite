import 'package:ecommerce_firebase/presentation/screens/checkout/checkout_screen.dart';
import 'package:ecommerce_firebase/presentation/screens/complete_profile/complete_profile.dart';
import 'package:ecommerce_firebase/presentation/screens/favourite/favourite_screen.dart';
import 'package:ecommerce_firebase/presentation/screens/home/home_screen.dart';
import 'package:ecommerce_firebase/presentation/screens/orders/orders_screen.dart';
import 'package:ecommerce_firebase/presentation/screens/otp_screen/otp_screen.dart';
import 'package:flutter/material.dart';

import '../../presentation/screens/cart/cart_screen.dart';
import '../../presentation/screens/forgot_password/forgot_password_screen.dart';
import '../../presentation/screens/product_details/product_details_screen.dart';
import '../../presentation/screens/profile/profile_screen.dart';
import '../../presentation/screens/sign_in/sign_in_screen.dart';
import '../../presentation/screens/sign_up/sign_up_screen.dart';
import '../../presentation/screens/splash/splash_screen.dart';


final Map<String, WidgetBuilder> routes = {
  HomeScreen.routeName: (context) => HomeScreen(),
  ProfileScreen.routeName: (context) => ProfileScreen(),
  ProductDetailsScreen.routeName: (context) => ProductDetailsScreen(),
  CartScreen.routeName: (context) => CartScreen(),
  SplashScreen.routeName: (context) => SplashScreen(),
  SignInScreen.routeName: (context) => SignInScreen(),
  SignUpScreen.routeName: (context) => SignUpScreen(),
  ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen(),
  CompleteProfileScreen.routeName: (context) => CompleteProfileScreen(),
  OTPScreen.routeName: (context) => OTPScreen(),
  CheckoutScreen.routeName: (context) => CheckoutScreen(),
  FavouriteScreen.routeName: (context) => FavouriteScreen(),
  OrderScreen.routeName: (context) => OrderScreen()
};
