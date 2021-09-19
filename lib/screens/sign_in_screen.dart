import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:library_guide/constant/styles.dart';
import 'package:library_guide/widgets/flatbuton.dart';
import 'package:library_guide/widgets/input_field.dart';
import 'package:library_guide/widgets/logo.dart';
import 'package:library_guide/widgets/textbuton.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            SizedBox(
              height: sizeFromHeight(context, 15),
            ),
            Logo(),
            SizedBox(
              height: sizeFromHeight(context, 15),
            ),
            Center(
                child: Text(
                  'تسجيل جديد',
                  style: s1,
                )),
            SizedBox(
              height: sizeFromHeight(context, 15),
            ),
            InputField(hint: "ادخل اسمك", label: " الاسم ", scure: false),
            SizedBox(
              height: sizeFromHeight(context, 20),
            ),
            InputField(hint: "ادخل البريد الالكتروني", label: "البريد الالكتروني ", scure: false),
            SizedBox(
              height: sizeFromHeight(context, 20),
            ),

            InputField(hint: "ادخل كلمة مرور", label: "كلمة المرور ", scure: true),
            SizedBox(
              height: sizeFromHeight(context, 20),
            ),
            InputField(hint: "أكد كلمة مرورك", label: "تأكيد كلمة المرور ", scure: true),
            SizedBox(
              height: sizeFromHeight(context,20),

            ),Buton('تسجيل'),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,

              children: [Txtbuton('سجل دخول'),
                Text('هل لديك حساب بالفعل ؟',style: s2,),
              ],
            ),

          ],
        ),
      ),
    );
  }
}
