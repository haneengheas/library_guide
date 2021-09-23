import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Image(
      image: AssetImage(
        'assets/logo2.png',
      ),
      height: 100,
    );
  }
}
