import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:library_guide/constant/styles.dart';
import 'package:library_guide/screens/admin/category_screen/view.dart';
import 'package:library_guide/widgets/button/flatbuton.dart';
import 'package:library_guide/widgets/button/textbuton.dart';
import 'package:library_guide/widgets/input_field.dart';
import 'package:library_guide/widgets/logo.dart';
class SignInScreen extends StatefulWidget {
  late final String email;
  late final String password;
  late final String name;

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
            height: 15,
          ),
          Logo(),
          SizedBox(
            height: 35,
          ),
          Center(
              child: Text(
            'تسجيل جديد',
            style: labelStyle,
          )),
          SizedBox(
            height: 15,
          ),
          InputField(
            hint: "ادخل اسمك",
            label: " الاسم ",
            scure: false,
            onChanged: (value){
              widget.name=value;
            },

          ),
          // SizedBox(
          //   height: sizeFromHeight(context, 20),
          // ),
          InputField(
            hint: "ادخل البريد الالكتروني",
            label: "البريد الالكتروني ",
            scure: false,
            onChanged: (value){
              widget.email=value;
            },
          ),
          // SizedBox(
          //   height: sizeFromHeight(context, 20),
          // ),
          InputField(
            hint: "ادخل كلمة مرور",
            label: "كلمة المرور ",
            scure: true,
            onChanged: (value){
              widget.password=value;
            },
          ),
          // SizedBox(
          //   height: sizeFromHeight(context, 20),
          // ),
          InputField(
            hint: "أكد كلمة مرورك",
            label: "تأكيد كلمة المرور ",
            scure: true,
            onChanged: (value){
              widget.password=value;
            },
          ),
          SizedBox(
            height: sizeFromHeight(context, 12),
          ),
          Buton('تسجيل', onTap: () {
            Navigator.pushReplacement(
                context, MaterialPageRoute(builder: (context) => Category()));
          }),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Textbuton('سجل دخول', onTap: () {}),
              Text(
                'هل لديك حساب بالفعل ؟',
                style: hintStyle,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
