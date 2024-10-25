import 'package:flutter/material.dart';

class Testing extends StatelessWidget {
  const Testing({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Positioned(
          top: 0,
          left: 0,
          right: 0,
          child: AppBar(
            toolbarHeight: 170,
            title: Text('Testing'),
          ),
        ),
        Container(
          margin: EdgeInsets.fromLTRB(0, 30, 0, 0),
          child: GridView.count(
              crossAxisCount: 4,
              mainAxisSpacing: 20,
              crossAxisSpacing: 20,
              children: [
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(width: 2, color: Colors.black),
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.lightBlue,
                  ),
                  child: Text("Item 1"),
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(width: 2, color: Colors.black),
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.lightBlue,
                  ),
                  child: Text("Item 1"),
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(width: 2, color: Colors.black),
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.lightBlue,
                  ),
                  child: Text("Item 1"),
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(width: 2, color: Colors.black),
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.lightBlue,
                  ),
                  child: Text("Item 1"),
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(width: 2, color: Colors.black),
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.lightBlue,
                  ),
                  child: Text("Item 1"),
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(width: 2, color: Colors.black),
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.lightBlue,
                  ),
                  child: Text("Item 1"),
                ),
              ]),
        )
      ],
    ));
  }
}
