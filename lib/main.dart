import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:login/screens/home/home_page.dart';
import 'package:login/screens/login/login_page.dart';
import 'package:login/screens/sales/sales_order_view.dart';
import 'package:login/screens/search_history/search_history_view.dart';
import 'package:login/screens/splash.dart';
import 'package:login/utils/routes.dart';

import 'screens/home_delivery/home_delivery_view.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      initialRoute: MyRoutes.homeDeliveryRoute,
      routes: {
        "/": (context) => const Splash(),
        MyRoutes.loginRoute: (context) => const LoginPage(),
        MyRoutes.homeRoute: (context) => const HomePage(),
        MyRoutes.salesOrderRoute: (context) => const SalesOrderPage(),
        MyRoutes.searchHistoryRoute: (context) => const SearchHistoryPage(),
        MyRoutes.homeDeliveryRoute: (context) => const HomeDeliveryPage()
      },
    );
  }
}
