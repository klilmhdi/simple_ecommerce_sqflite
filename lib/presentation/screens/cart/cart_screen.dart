import 'package:ecommerce_firebase/core/Utilities/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ecommerce_firebase/presentation/bloc/cart/cart_bloc.dart';
import 'package:ecommerce_firebase/presentation/bloc/cart/cart_event.dart';
import 'package:ecommerce_firebase/presentation/widgets/custom_app_bar.dart';
import 'components/cart_body.dart';

class CartScreen extends StatelessWidget {
  static String routeName = "/cart";

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    final bloc = BlocProvider.of<CartBloc>(context);
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(AppBar().preferredSize.height +
            SizeConfig.getProportionateScreenHeight(40)),
        child: CustomAppBar(
          title: "Basket",
          icon: const Icon(
            Icons.restore_from_trash,
            color: Colors.redAccent,
          ),
          onIconTapped: () {
            bloc.add(const ClearCartContentEvent());
          },
        ),
      ),
      body: const CartBody(),
    );
  }
}
