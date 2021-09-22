import 'package:flutter/material.dart';
import 'package:library_guide/constant/styles.dart';
class UserProfile extends StatelessWidget {
UserProfile(this.textaddress,{required this.textContainer});
final String textaddress;
final String textContainer;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 14),
      child: Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          textDirection: TextDirection.rtl,
          children: [
            Text(
              textaddress,
              style: labelStyle,
            ),
            SizedBox(height: 16),
            Container(

              height: 55,
              width: sizeFromWidth(context, 1.1),
              decoration: BoxDecoration(color: clear_gray,
                borderRadius: BorderRadius.circular(10),),
              child: Padding(
                padding: const EdgeInsets.only(top: 30,left: 20,right: 5,),
                child: Text(textContainer,style: labelStyle,),
              ),
            ),


          ],
        ),
      ),
    );
  }
}
