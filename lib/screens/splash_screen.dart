import 'dart:async';

import 'package:flutter/material.dart';
import 'package:library_guide/constant/styles.dart';
import 'package:library_guide/screens/log_in_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(Duration(seconds: 5), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => LogInScreen()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: sizeFromWidth(context, 2),
          height: sizeFromHeight(context, 2),
          decoration: BoxDecoration(
              //color: gray,
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage(
                  'assets/logo.png',
                ),
              )),
        ),
      ),
    );
  }
}
