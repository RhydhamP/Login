// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:login/screens/home/home_page.dart';
import 'package:login/screens/login/login_page.dart';
import 'package:login/screens/sales/sales_order_view.dart';
import 'package:login/screens/splash.dart';
import 'package:login/utils/routes.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      initialRoute: "/",
      routes: {
        "/": (context) => const Splash(),
        MyRoutes.loginRoute: (context) => LoginPage(),
        MyRoutes.homeRoute: (context) => HomePage(),
        MyRoutes.salesOrderRoute: (context) => SalesOrderPage()
      },
    );
  }
}
