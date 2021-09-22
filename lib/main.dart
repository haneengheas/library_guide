import 'package:flutter/material.dart';
import 'package:library_guide/screens/registration/log_in_screen.dart';
import 'package:library_guide/screens/splash_screen.dart';

void main() =>  runApp(MyApp());
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
