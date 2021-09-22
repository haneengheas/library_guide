import 'package:flutter/material.dart';
class NavigationScreen extends StatefulWidget {
  const NavigationScreen({Key? key}) : super(key: key);

  @override
  _NavigationScreenState createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  int pageindex=0;
  List <Widget> pages=[
    Text('data'),
    Text('data'),
    Text('data'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[pageindex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: pageindex,
          onTap: (value){
          setState(() {
            pageindex=value;
          });
          },
          items: [
        BottomNavigationBarItem(icon: Icon(Icons.home),label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.home),label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.home),label: ''),

      ]),
    );
  }
}
