import 'package:flutter/material.dart';
import 'package:library_guide/constant/styles.dart';
class Displaybook extends StatelessWidget {
  const Displaybook({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: sizeFromHeight(context,10),
        margin: EdgeInsets.all(10),
        color: clear_gray,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [

            Row(
              children: [
                Icon(Icons.delete,size: 20,),
                Icon(Icons.edit,size: 20,),
              ],
            ),
            Text('text',style: s2,),
          ],
        ),
      ),
    );
  }
}
