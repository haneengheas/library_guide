import 'package:flutter/material.dart';
import 'package:library_guide/constant/styles.dart';
class Logo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
        backgroundColor: clear_gray,
      radius: 45,
      child: Image(image: AssetImage('assets/bag.png',),

    ));
  }
}
