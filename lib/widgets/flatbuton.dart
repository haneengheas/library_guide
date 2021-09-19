
import 'package:flutter/material.dart';
import 'package:library_guide/constant/styles.dart';
import 'package:library_guide/screens/add_book_scren.dart';
class Buton extends StatelessWidget {

  String text;
  Buton(this.text);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (context) =>AddBookScren()));
        },
        child: Container(
          //margin: EdgeInsets.all(50),
          height: sizeFromHeight(context, 14),
          width: sizeFromWidth(context, 10),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: purple,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Text(
            text,
            style: s3,
          ),
        ));
  }
}
