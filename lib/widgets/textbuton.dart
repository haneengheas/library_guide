
import 'package:flutter/material.dart';
import 'package:library_guide/screens/sign_in_screen.dart';

class Txtbuton extends StatelessWidget {
  String text;
  Txtbuton(this.text);


  @override
  Widget build(BuildContext context) {
    return TextButton(onPressed: (){
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => SignInScreen()));
    }, child: Text('$text'),
    );
  }
}
