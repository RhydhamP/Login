import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:login/local_store/local_database.dart';
import 'package:login/utils/routes.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    // navigate();
    super.initState();
  }

  Future navigate() async {
    // final SharedPreferences prefs = await SharedPreferences.getInstance();

    // final String token = prefs.getString(authTokenKey) ?? "";

    String token = await LocalDatabase().getAuthToken();

    debugPrint("token==========================$token");
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
      effects: const [
        // FadeEffect(duration: Duration(seconds: 2)),
        BlurEffect(duration: Duration(seconds: 2))
      ],
      child: AnimatedContainer(
        // height: 60,
        // width: 60,
        duration: const Duration(seconds: 2),
        color: Colors.green,
        child: Image.asset(
          "assets/images/Logo.png",
          height: 60,
          width: 60,
        ),
      ),
    );
  }
}
