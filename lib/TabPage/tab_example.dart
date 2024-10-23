import 'package:flutter/material.dart';
import 'package:test_project/TabPage/camera.dart';
import 'package:test_project/TabPage/contact.dart';

class TanExample extends StatefulWidget {
  const TanExample({super.key});

  @override
  State<TanExample> createState() => _TanExampleState();
}

class _TanExampleState extends State<TanExample> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blue,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(20)
              )
            ),
            title: const Text(
              'Tab Example',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,

              ),
            ),
            bottom: const TabBar(
              indicatorColor: Colors.red,
              labelColor: Colors.white,
              tabs: [
                Tab(icon: Icon(Icons.contact_mail,color: Colors.white,), text: 'Contact'),
                Tab(icon: Icon(Icons.camera,color: Colors.white,), text: 'Camera'),
              ],
            ),
          ),
          body: const TabBarView(
            children: [Contact(), Camera()],
          ),
        ));
  }
}
