import 'package:flutter/material.dart';
import 'package:library_guide/constant/styles.dart';
import 'package:library_guide/screens/admin/category_screen/view.dart';
import 'package:library_guide/screens/registration/password_recovery.dart';
import 'package:library_guide/screens/registration/sign_in_screen.dart';
import 'package:library_guide/screens/user/navigation.dart';
import 'package:library_guide/widgets/button/flatbuton.dart';
import 'package:library_guide/widgets/button/textbuton.dart';
import 'package:library_guide/widgets/input_field_regeist.dart';
import 'package:library_guide/widgets/logo.dart';
class LogInScreen extends StatefulWidget {
  // late final String email;
  // late  final String password;
 final TextEditingController emailController =TextEditingController();
 final TextEditingController passwordController =TextEditingController();

  @override
  _LogInScreenState createState() => _LogInScreenState();
}
class _LogInScreenState extends State<LogInScreen> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  validateForm() {
    print('aa');
    if (_formKey.currentState!.validate()) {
      print('login');
    } else {
      return;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          SizedBox(
            height: 35
          ),
          Logo(height: 140,),
          SizedBox(
            height: 30,
          ),
          Center(
              child: Text(
            'تسجيل الدخول',
            style: labelStyle,
          )),
          SizedBox(
            height: 20,
          ),
         Form(
           key: _formKey,
             child: Column(
           children: [
             InputFieldRegist(
               hint: 'ادخل البريد الالكتروني',
               label: 'البريد الالكتروني',
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
               hint: 'ادخل كلمة المرور',
               label: 'كلمة المرور',
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
           ],
         )),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Textbuton('هل نسيت كلمة المرور', onTap: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => PasswordRecovery()));
                })
              ],
            ),
          ),
          SizedBox(
            height: sizeFromHeight(context, 20),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Textbuton(
                'إنشاء حساب',
                onTap: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => SignInScreen()));
                },
              ),
              SizedBox(
                height: sizeFromHeight(context, 12),
              ),
              Text(
                'ليس لديك حساب ؟',
                style: hintStyle,
              ),
            ],
          ),

          Buton("تسجيل دخول", onTap:  () {
            validateForm();
            Navigator.push(context, MaterialPageRoute(builder: (context)=>NavigationScreen()));
            // if(widget.emailController.text=='1'){
            //   Navigator.pushReplacement(
            //       context, MaterialPageRoute(builder: (context) => Category()));
            // }
            // else{
            //   Navigator.pushReplacement(
            //       context, MaterialPageRoute(builder: (context) => NavigationScreen()));
            // }
            print ('00');
          }),
        ],
      ),
    );
  }
}
