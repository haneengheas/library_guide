import 'package:flutter/material.dart';
import 'package:library_guide/widgets/displaybook.dart';
class DisplayBooksScreen extends StatelessWidget {
  const DisplayBooksScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView.builder(
            itemCount: 7,

            itemBuilder:(context,index){
          return Displaybook();
        }),
      ),
        floatingActionButton:FloatingActionButton(onPressed: () {  },
        child: Icon(Icons.add) ,),
    );
  }
}
