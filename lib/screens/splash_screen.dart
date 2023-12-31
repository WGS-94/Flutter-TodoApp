import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
// import 'package:projeqta/constants/colors.dart';
import 'package:projeqta/screens/login_screen.dart';

void main() {
  runApp(const SplashScreen());
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<StatefulWidget> createState() => StartState();
}

class StartState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    startTime();
  }

  startTime() async {
    var duration = const Duration(seconds: 4);
    return Timer(duration, route);
  }

  route() {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => const LoginScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return initWidget(context);
  }

  Widget initWidget(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/Projeqta_byQQ_Branco_SemConceito_H.png',
              height: 57),
          const SizedBox(height: 33),
          if (defaultTargetPlatform == TargetPlatform.iOS)
            const CupertinoActivityIndicator(
              color: Colors.white,
              radius: 20,
            )
          else
            const CircularProgressIndicator(
              color: Colors.white,
            )
        ],
      ),
    ));
  }
}
