import 'package:flutter/material.dart';
import 'package:library_guide/constant/styles.dart';
import 'package:library_guide/screens/display_books_screen.dart';

class AddImage extends StatelessWidget {
String text;
AddImage(this.text);
  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: (){
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> DisplayBooksSkreen() ));
      },

      child: Container(

        height: sizeFromHeight(context, 15),
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.all(5),
        child: Center(child: Text('$text',style: s2,)),
        decoration: BoxDecoration(
            color: white,
            border: Border.all(
              color: purple,
              width: 2,
            )),
      ),
    );
  }
}
