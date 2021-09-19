import 'dart:async';

import 'package:flutter/material.dart';
import 'package:library_guide/constant/styles.dart';
import 'package:library_guide/screens/sign_in_screen.dart';

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
          context, MaterialPageRoute(builder: (context) => SignInScreen()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: sizeFromWidth(context, 3),
          height: sizeFromHeight(context, 3),
          decoration: BoxDecoration(
              color: gray,
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage(
                  'assets/bag.png',
                ),
              )),
        ),
      ),
    );
  }
}
