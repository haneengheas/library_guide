import 'package:flutter/material.dart';
import 'package:library_guide/constant/styles.dart';
class Logo extends StatelessWidget {
  const Logo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
        backgroundColor: clear_gray,
      //maxRadius: 70,
      radius: 50,
      child: Image(image: AssetImage('assets/logo.png',),

    ));
  }
}
