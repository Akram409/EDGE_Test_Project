import 'package:flutter/material.dart';
import 'package:test_project/TabPage/camera.dart';
import 'package:test_project/TabPage/contact.dart';

class BottomNavigationPractice extends StatefulWidget {
  const BottomNavigationPractice({super.key});

  @override
  State<BottomNavigationPractice> createState() =>
      _BottomNavigationPracticeState();
}


class _BottomNavigationPracticeState extends State<BottomNavigationPractice> {

  // Index of the selected item in the bottom navigation bar
  int selectedIndex = 0;
  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  // List of widgets to be displayed in the bottom navigation bar
  List<Widget>pages = <Widget>[
    Contact(),
    Camera(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Bottom Navigation Practice',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
      ),
      body: Center(
        child: pages.elementAt(selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.contact_mail),
              label: 'Contact',
              backgroundColor: Colors.red),
          BottomNavigationBarItem(
              icon: Icon(Icons.camera_alt),
              label: 'Camera',
              backgroundColor: Colors.green),
        ],

        type: BottomNavigationBarType.shifting,
        currentIndex: selectedIndex,
        selectedItemColor: Colors.blue,
        iconSize: 40,
        onTap: onItemTapped,
      ),
    );
  }
}
