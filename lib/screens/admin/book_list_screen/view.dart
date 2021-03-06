import 'package:flutter/material.dart';
import 'package:library_guide/constant/styles.dart';
import 'package:library_guide/screens/admin/book_list_screen/displaybook_item.dart';
class DisplayBooksScreen extends StatelessWidget {
  const DisplayBooksScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: Column(
          children: [
            SizedBox(
              height: 60,
            ),
            Text('جميع الكتب',style: labelStyle,),
            SizedBox(
              height: sizeFromHeight(context, 1),
              child: ListView.builder(
                  itemCount: 20,
                  itemBuilder: (context, index) {
                    return DisplaybookItem();
                  }),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
      floatingActionButton: FloatingActionButton(
        backgroundColor: purple,
        onPressed: () {},
        child: Icon(Icons.add),
      ),
    );
  }
}
