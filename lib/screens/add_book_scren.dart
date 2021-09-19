import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:library_guide/constant/styles.dart';
import 'package:library_guide/widgets/addimage.dart';
import 'package:library_guide/widgets/flatbuton.dart';
import 'package:library_guide/widgets/input_field.dart';
import 'package:library_guide/widgets/logo.dart';

class AddBookScren extends StatelessWidget {
  const AddBookScren({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            children: [
              SizedBox(
                height: sizeFromHeight(context, 20),
              ),
              Logo(),
              SizedBox(
                height: sizeFromHeight(context, 12),
              ),

              Center(
                  child: Text(
                    'إضافة كتاب',
                    style: s1,
                  )),
              SizedBox( height: sizeFromHeight(context, 15),),
              InputField(hint:'ادخل اسم الكتاب', label: 'اسم الكتاب', scure: false),
              SizedBox(
                height: sizeFromHeight(context,20),
              ),
              InputField(hint:'ادخل اسم المؤلف', label: 'المؤلف', scure: false),
              SizedBox(
                height: sizeFromHeight(context,20),
              ),
              InputField(hint:'ادخل النوع', label: 'النوع', scure: false),
              SizedBox(
                height: sizeFromHeight(context,20),
              ),
              InputField(hint:'ادخل رقم العمود', label: 'رقم العمود', scure: false),
              SizedBox(
                height: sizeFromHeight(context,20),
              ),
              InputField(hint:'ادخل رقم الصف', label: 'رقم الصف', scure: false),
              SizedBox(
                height: sizeFromHeight(context,20),
              ),
              AddImage(' + اضافة صورة '),
              Buton('اضافة'),
              SizedBox(
                height: sizeFromHeight(context,30),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
