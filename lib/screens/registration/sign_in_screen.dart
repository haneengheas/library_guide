import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:library_guide/constant/styles.dart';
import 'package:library_guide/screens/admin/category_screen/view.dart';
import 'package:library_guide/screens/registration/log_in_screen.dart';
import 'package:library_guide/widgets/button/flatbuton.dart';
import 'package:library_guide/widgets/button/textbuton.dart';
import 'package:library_guide/widgets/input_field_regeist.dart';
import 'package:library_guide/widgets/logo.dart';
class SignInScreen extends StatefulWidget {
  final TextEditingController emailController =TextEditingController();
  final TextEditingController passwordController =TextEditingController();
  final TextEditingController nameController =TextEditingController();


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
          Logo(height: 120,),
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
          InputFieldRegist(
            hint: "ادخل اسمك",
            label: " الاسم ",
            scure: false,
           controller: widget.nameController,
            validator: (value) {
              if (value!.isEmpty) {
                return 'برجاء كتابه البريد الالكتروني بشكل صحيح';
              } else if (value.length < 5) {
                return 'برجاء كتابه البريد الالكتروني بشكل صحيح';
              }
            },

          ),
          InputFieldRegist(
            hint: "ادخل البريد الالكتروني",
            label: "البريد الالكتروني ",
            scure: false,
            controller: widget.emailController,
            validator: (value) {
              if (value!.isEmpty) {
                return 'برجاء كتابه البريد الالكتروني بشكل صحيح';
              } else if (value.length < 5) {
                return 'برجاء كتابه البريد الالكتروني بشكل صحيح';
              }
            },
          ),

          InputFieldRegist(
            hint: "ادخل كلمة مرور",
            label: "كلمة المرور ",
            scure: true,
            controller: widget.passwordController,
            validator: (value) {
              if (value!.isEmpty) {
                return 'برجاء كتابه البريد الالكتروني بشكل صحيح';
              } else if (value.length < 5) {
                return 'برجاء كتابه البريد الالكتروني بشكل صحيح';
              }
            },
          ),

          InputFieldRegist(
            hint: "أكد كلمة مرورك",
            label: "تأكيد كلمة المرور ",
            scure: true,
            controller: widget.passwordController,
            validator: (value) {
              if (value!.isEmpty) {
                return 'برجاء كتابه البريد الالكتروني بشكل صحيح';
              } else if (value.length < 5) {
                return 'برجاء كتابه البريد الالكتروني بشكل صحيح';
              }
            },

          ),
          SizedBox(
            height: 20
          ),
          Buton('تسجيل', onTap: () {
            Navigator.pushReplacement(
                context, MaterialPageRoute(builder: (context) => Category()));
          }),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Textbuton('سجل دخول', onTap: () {Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> LogInScreen()));}),
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
