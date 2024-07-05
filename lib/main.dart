import 'package:ecommerce_firebase/core/constants/routes.dart';
import 'package:ecommerce_firebase/presentation/bloc/favorite/favorite_bloc.dart';
import 'package:ecommerce_firebase/presentation/bloc/order/order_bloc.dart';
import 'package:ecommerce_firebase/presentation/screens/splash/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'presentation/bloc/cart/cart_bloc.dart';
import 'presentation/bloc/search/search_bloc.dart';

void main() async{
  runApp(MyApp());
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  FlutterNativeSplash.remove();
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<FavoriteBloc>(
          create: (_) => FavoriteBloc(),
        ),
        BlocProvider<SearchBloc>(
          create: (_) => SearchBloc(),
        ),
        BlocProvider<OrderBloc>(
          create: (_) => OrderBloc(),
        ),
        BlocProvider<CartBloc>(
          create: (_) => CartBloc(),
        ),
      ],
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Your Store',
          theme: ThemeData(fontFamily: 'Raleway'),
          initialRoute: SplashScreen.routeName,
          routes: routes),
    );
  }
}
