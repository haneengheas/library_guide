import 'package:flutter/material.dart';
import 'package:library_guide/constant/styles.dart';
import 'package:library_guide/widgets/input_field.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          SizedBox(
            height: sizeFromHeight(context, 4),
          ),
          InputField(
            hint: 'ادخل البريد الالكتروني',
            label: 'البريد الالكتروني',
            scure: false,
          ),
          SizedBox(
            height: sizeFromHeight(context, 7.5),
          ),
          InputField(
            hint: 'ادخل كلمة المرور',
            label: 'كلمة المرور',
            scure: true,
          )
        ],
      ),
    );
  }
}
