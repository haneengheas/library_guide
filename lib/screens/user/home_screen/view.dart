import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:library_guide/constant/styles.dart';
import 'package:library_guide/screens/user/home_screen/books_box.dart';
import 'package:library_guide/widgets/logo.dart';

class HomePageScren extends StatelessWidget {
  const HomePageScren({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: Center(child: Logo()),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 10,top: 10),
                child: Center(
                    child: Text(
                      'الصفحة الرئيسية ',
                      style: labelStyle,
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 30),
                child: Text(
                  'مقترحات الكتب',
                  style: appbarStyle,
                ),
              ),
              BooksBox(4),
              Padding(
                padding: const EdgeInsets.only(right: 30),
                child: Text(
                  'روايات',
                  style: appbarStyle,
                ),
              ),
              BooksBox(10),
              Padding(
                padding: const EdgeInsets.only(right: 30),
                child: Text(
                  'أدب',
                  style: appbarStyle,
                ),
              ),
              BooksBox(10),
              Padding(
                padding: const EdgeInsets.only(right: 30),
                child: Text(
                  'قدرات',
                  style: appbarStyle,
                ),
              ),
              BooksBox(10),
              Padding(
                padding: const EdgeInsets.only(right: 30),
                child: Text(
                  'لغات',
                  style: appbarStyle,
                ),
              ),
              BooksBox(10)
            ],
          ),
        ],
      ),
    );
  }
}