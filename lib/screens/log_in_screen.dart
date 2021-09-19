import 'package:flutter/material.dart';
import 'package:library_guide/constant/styles.dart';
import 'package:library_guide/widgets/flatbuton.dart';
import 'package:library_guide/widgets/input_field.dart';
import 'package:library_guide/widgets/textbuton.dart';

class LogInScreen extends StatefulWidget {
  const LogInScreen({Key? key}) : super(key: key);

  @override
  _LogInScreenState createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            SizedBox(
              height: sizeFromHeight(context, 7),
            ),
            Center(
                child: Text(
              'تسجيل الدخول',
              style: s1,
            )),
            SizedBox(
              height: sizeFromHeight(context, 8),
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
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [Txtbuton('هل نسيت كلمة المرور')],
            ),
            SizedBox(
              height: sizeFromHeight(context,20 ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,

              children: [Txtbuton('إنشاء حساب'),
                Text('ليس لديك حساب ؟',style: s2,),
              ],
            ),
            Buton("تسجيل دخول")
          ],
        ),
      ),
    );
  }
}
