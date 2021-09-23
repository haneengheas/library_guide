import 'package:flutter/material.dart';
import 'package:library_guide/constant/styles.dart';
import 'package:library_guide/widgets/button/flatbuton.dart';
import 'package:library_guide/widgets/input_field_regeist.dart';

class EditProfile extends StatefulWidget {
  late final String password;
  final TextEditingController passwordController = TextEditingController();

  @override
  _EditProfileState createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          SizedBox(
            height: 70,
          ),
          Center(
            child: Text(
              "تعديل الملف الشخصى",
              style: labelStyle,
            ),
          ),
          SizedBox(
            height: 60,
          ),
          InputFieldRegist(
            hint: 'ادخل الرقم السرى القديم',
            label: 'الرقم السرى القديم',
            scure: false,
            controller: widget.passwordController,
          ),
          SizedBox(
            height: 20,
          ),
          InputFieldRegist(
            hint: 'ادخل الرقم السرى الجديد',
            label: 'الرقم السرى الجديد',
            scure: false,
            controller: widget.passwordController,

          ),
          SizedBox(
            height: 20,
          ),
          InputFieldRegist(
            hint: ' تاكيد الرقم السرى الجديد',
            label: ' تاكيد الرقم السرى الجديد',
            scure: false,
            controller: widget.passwordController,

          ),
          SizedBox(
          height: 80
          ),
          Buton(
            "تعديل",
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
