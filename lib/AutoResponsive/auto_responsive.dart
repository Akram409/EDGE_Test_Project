import 'package:flutter/material.dart';

class AutoResponsive extends StatelessWidget {
  const AutoResponsive({super.key});

  @override
  Widget build(BuildContext context) {
    // This are work in every format like tablet, mobile, and desktop
    // Here we are checking if the screen width is greater than 600 pixels
    // If true, font size will be 30.0, otherwise it will be 20.0
    // This will make the font size responsive to different screen sizes
    // You can adjust the font size and fontWeight as per your requirements
    // It also work in images, widgets, and other UI elements as well
    var screenWidth = MediaQuery.sizeOf(context).width;
    var fontSize = screenWidth > 600 ? 30.0 : 20.0;

    return Scaffold(
      body: Column(
        children: [
          Text(
            "Hello, World!",
            style: TextStyle(
              // use the ResponsiveFontSize class to adjust font size based on screen width
              fontSize: fontSize,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
