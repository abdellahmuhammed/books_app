import 'package:flutter/material.dart';
import '../theme/books_theme.dart';

class CustomErrorMessage extends StatelessWidget {
  const CustomErrorMessage({super.key, required this.errorMessage});

  final String errorMessage;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        errorMessage,
        textAlign: TextAlign.center,
        style: BooksStyles.textStyle20Bold(context),
      ),
    );
  }
}
