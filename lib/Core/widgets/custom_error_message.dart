import 'package:flutter/material.dart';
import '../theme/books_theme.dart';

/// CustomErrorMessage is a widget that displays an error message.
class CustomErrorMessage extends StatelessWidget {
  const CustomErrorMessage({super.key, required this.errorMessage});

  final String errorMessage; // Error message to be displayed

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        errorMessage, // Displayed error message
        textAlign: TextAlign.center, // Center the text
        style: BooksStyles.textStyle20Bold(context), // Style for the error message
      ),
    );
  }
}
