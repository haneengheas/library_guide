import 'package:flutter/material.dart';
import 'package:library_guide/constant/styles.dart';
import 'package:library_guide/widgets/button/flatbuton.dart';
import 'package:library_guide/widgets/input_field.dart';

class EditProfile extends StatefulWidget {
 late final String password;
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
            height: 50,
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
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14),
            child: Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                textDirection: TextDirection.rtl,
                children: [
                  InputField(
                    onChanged: (){},
                    hint: 'ادخل الرقم السرى القديم',
                    label: 'الرقم السرى القديم',
                    scure: false,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  InputField(
                    hint: 'ادخل الرقم السرى الجديد',
                    label: 'الرقم السرى الجديد',
                    scure: false,
                    onChanged: (value){
                      widget.password=value;
                    },
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  InputField(
                    hint: ' تاكيد الرقم السرى الجديد',
                    label: ' تاكيد الرقم السرى الجديد',
                    scure: false,
                    onChanged: (value){
                      widget.password=value;
                    },
                  ),

                ],
              ),

            ),
          ),
          SizedBox(
            height: 30,
          ),
          Buton("تعديل", onTap: () {},),
        ],
      ),
    );
  }
}
