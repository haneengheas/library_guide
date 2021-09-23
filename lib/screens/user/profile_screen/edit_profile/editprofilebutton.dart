import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:library_guide/constant/styles.dart';

class EditButten extends StatelessWidget {
  final String text;
  final Function onTap;

  EditButten(this.text, {required this.onTap, });

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () => onTap(),
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 15,
          ),
          height: sizeFromHeight(context, 11),
          width: sizeFromWidth(context, 10),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10)
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 7,
                offset: Offset(0, 3), // changes position of shadow
              ),
            ],
            color: white2,

          ),
          child: Text(
            text,
            style: GoogleFonts.tajawal(
                textStyle: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: purple,
                    height: 1.5)),
          ),

        ));
  }
}
