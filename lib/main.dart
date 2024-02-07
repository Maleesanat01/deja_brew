// ignore_for_file: prefer_const_constructors, depend_on_referenced_packages

import 'package:deja_brew/pages/home_pg.dart';
import 'package:deja_brew/pages/cart_pg.dart';
import 'package:deja_brew/pages/first_pg.dart';
import 'package:deja_brew/pages/offers_pg.dart';
import 'package:deja_brew/pages/profile_pg.dart';
import 'package:deja_brew/pages/settings_pg.dart';
import 'package:deja_brew/pages/shop_pg.dart';
import 'package:deja_brew/pages/login_pg.dart';
import 'package:deja_brew/pages/register_pg.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const FirstPg(),
      //navigatorKey: navigatorKey,
      initialRoute: '/',
      routes: {
        '/LogInPage': (context) => LoginPg(),
        '/RegisterPage': (context) => RegisterPg(),
        '/HomePage': (context) => HomePg(),
        '/ShopPage': (context) => ShopPg(),
        '/CartPage': (context) => CartPg(),
        '/OffersPage': (context) => OffersPg(),
        '/ProfilePage': (context) => ProfilePg(),
        '/SettingsPage': (context) => SettingsPg(),
        '/FirstPage': (context) => FirstPg(),
      },
    );
  }
}
