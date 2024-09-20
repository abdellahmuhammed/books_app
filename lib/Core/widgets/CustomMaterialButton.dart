// ignore_for_file: file_names

import 'package:flutter/material.dart';
import '../theme/books_theme.dart';

/// CustomMaterialButton is a customizable Material button widget.
class CustomMaterialButton extends StatelessWidget {
  const CustomMaterialButton({
    super.key,
    this.textColor = Colors.white, // Color of the button text
    required this.backgroundColor, // Background color of the button
    required this.text, // Text displayed on the button
    this.topLeft = 0, // Top-left corner radius
    this.bottomLeft = 0, // Bottom-left corner radius
    this.topRight = 0, // Top-right corner radius
    this.bottomRight = 0, // Bottom-right corner radius
    this.fontSize, // Optional font size for the button text
    this.onTap, // Callback function for button press
  });

  final Color textColor; // Color of the button text
  final Color backgroundColor; // Background color of the button
  final String text; // Text displayed on the button
  final double topLeft; // Top-left corner radius
  final double bottomLeft; // Bottom-left corner radius
  final double topRight; // Top-right corner radius
  final double bottomRight; // Bottom-right corner radius
  final double? fontSize; // Optional font size for the button text
  final void Function()? onTap; // Callback function for button press

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      height: 40, // Fixed height for the button
      color: backgroundColor, // Background color of the button
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(topLeft), // Radius for top-left corner
            bottomLeft: Radius.circular(bottomLeft), // Radius for bottom-left corner
            topRight: Radius.circular(topRight), // Radius for top-right corner
            bottomRight: Radius.circular(bottomRight), // Radius for bottom-right corner
          ),),
      onPressed: onTap, // Callback function when button is pressed
      child: Text(
        text, // Displayed text on the button
        style: BooksStyles.textStyle18Medium(context).copyWith(
          color: textColor, // Text color
          fontSize: fontSize, // Font size
        ),
      ),
    );
  }
}
