import 'dart:async';
import 'package:flutter/material.dart';
import 'package:library_guide/constant/styles.dart';
import 'package:library_guide/screens/registration/log_in_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(Duration(seconds: 10), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => LogInScreen()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(child: Image(image: AssetImage("assets/logo2.png"),
            height: sizeFromHeight(context, 2),
            width: sizeFromWidth(context, 2),))
    );
  }
}
