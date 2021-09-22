import 'package:flutter/material.dart';
import 'package:library_guide/constant/styles.dart';
import 'package:library_guide/screens/registration/log_in_screen.dart';
import 'package:library_guide/screens/user/profile_screen/editprofilebutton.dart';
import 'package:library_guide/widgets/button/flatbuton.dart';
import 'package:library_guide/widgets/logo.dart';

import 'userprofilecontainer.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          SizedBox(
            height: 25,
          ),
          Logo(),
          SizedBox(height: 20),
          Center(
            child: Text(
              "الصفحة الشخصية",
              style: labelStyle,
            ),
          ),
          SizedBox(height: 50),
          UserProfile(
            ": الأسم",
            textContainer: "Ahmed Bahgat",
          ),
          SizedBox(height: 50),
          UserProfile(
            ": البريد الألكترونى",
            textContainer: "Ahmed1223@gmail.com",
          ),
          SizedBox(height: 50),
          EditButten("تعديل بياناتى", onTap: () {}),
          SizedBox(height: 20),
          Buton("تسجيل خروج", onTap: () {
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) => LogInScreen()));
          }),
        ],
      ),
    );
  }
}
