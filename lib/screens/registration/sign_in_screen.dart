import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:library_guide/constant/styles.dart';
import 'package:library_guide/screens/admin/category_screen/view.dart';
import 'package:library_guide/widgets/button/flatbuton.dart';
import 'package:library_guide/widgets/button/textbuton.dart';
import 'package:library_guide/widgets/input_field.dart';
import 'package:library_guide/widgets/logo.dart';
@immutable
class SignInScreen extends StatelessWidget {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

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
            controller: _emailController,
          ),
          // SizedBox(
          //   height: sizeFromHeight(context, 20),
          // ),
          InputField(
            hint: "ادخل البريد الالكتروني",
            label: "البريد الالكتروني ",
            scure: false,
            controller: _emailController,
          ),
          // SizedBox(
          //   height: sizeFromHeight(context, 20),
          // ),
          InputField(
            hint: "ادخل كلمة مرور",
            label: "كلمة المرور ",
            scure: true,
            controller: _emailController,
          ),
          // SizedBox(
          //   height: sizeFromHeight(context, 20),
          // ),
          InputField(
            hint: "أكد كلمة مرورك",
            label: "تأكيد كلمة المرور ",
            scure: true,
            controller: _emailController,
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
