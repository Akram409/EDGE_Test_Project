import 'package:flutter/material.dart';

class InkwellBtn extends StatelessWidget {
  const InkwellBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // Ripple effect using InkWell
          // Show animation when pressed
          InkWell(
              child: ElevatedButton(onPressed: () {}, child: Text("Press me")))
        ],
      ),
    );
  }
}
