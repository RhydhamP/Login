// ignore_for_file: prefer_const_constructors, use_build_context_synchronously, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
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
    // navigate();
    super.initState();
  }

  Future navigate() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    final String token = prefs.getString(authTokenKey) ?? "";

    // LocalDatabase loData;
    // String token = loData.getAuthToken();

    print("token==========================$token");
    if (token.isNotEmpty) {
      Navigator.pushNamed(context, MyRoutes.homeRoute);
    } else {
      Navigator.pushNamed(context, MyRoutes.loginRoute);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Animate(
      onComplete: (controller) {
        navigate();
      },
      effects: [
        // FadeEffect(duration: Duration(seconds: 2)),
        BlurEffect(duration: Duration(seconds: 2))
      ],
      child: AnimatedContainer(
        // height: 60,
        // width: 60,
        duration: Duration(seconds: 2),
        color: Colors.green,
        child: Image.asset("assets/images/Logo.png",height: 60,width: 60,),
      ),
    );
  }
}
