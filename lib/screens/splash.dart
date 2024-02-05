import 'package:flutter/material.dart';
import 'package:login/utils/constant.dart';
import 'package:login/utils/routes.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  navigate() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    final String token = prefs.getString(authTokenKey)??"";
    if (token.isNotEmpty) {
      Navigator.pushNamed(context, MyRoutes.homeRoute);
    } else {
      Navigator.pushNamed(context, MyRoutes.loginRoute);
    }
  }

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}