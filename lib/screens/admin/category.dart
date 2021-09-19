import 'package:flutter/material.dart';
import 'package:library_guide/constant/styles.dart';
import 'package:library_guide/screens/admin/category_item.dart';
import 'package:library_guide/screens/admin/custom_appBar.dart';
import 'package:library_guide/screens/admin/display_books_screen.dart';

class Category extends StatefulWidget {
  const Category({Key? key}) : super(key: key);

  @override
  _CategoryState createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          appBar(),
          SizedBox(
            height: sizeFromHeight(context, 5),
          ),
          CategoryItem(
            text: 'الكتب',
            onTap: () {},
          ),
          CategoryItem(
            text: 'اضافة كتاب',
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => DisplayBooksScreen()));
            },
          ),
          CategoryItem(
            text: 'تسجيل خروج',
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
