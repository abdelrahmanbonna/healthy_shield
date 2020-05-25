import 'package:flutter/material.dart';

//Here is Home screen

class Home extends StatelessWidget {
  static String id = "home";
  int currentChoice = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentChoice,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('Home')),
          BottomNavigationBarItem(
              icon: Icon(Icons.home), title: Text('Barcode')),
          BottomNavigationBarItem(
              icon: Icon(Icons.home), title: Text('Profile')),
          BottomNavigationBarItem(
              icon: Icon(Icons.home), title: Text('Report')),
        ],
        onTap: (index) {
          setState() {
            currentChoice = index;
          }
        },
      ),
    );
  }
}
