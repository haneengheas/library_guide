import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  //ToDo
  // add new variable
  late final double height;
Logo({
    required this.height,
});

  @override
  Widget build(BuildContext context) {
    return Image(
      image: AssetImage(
        'assets/logo2.png',
      ),
      height: height,
    );
  }
}
