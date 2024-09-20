// ignore_for_file: file_names

import 'package:flutter/material.dart';

import '../../../../Core/theme/books_theme.dart';

class BookRating extends StatelessWidget {
  const BookRating(
      {super.key,
      this.mainAxisAlignment = MainAxisAlignment.start,
      required this.averageRating,
      required this.countRating});

  final MainAxisAlignment mainAxisAlignment;
  final num averageRating;
  final int countRating;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        Text(
          '⭐ $averageRating', // Star rating
          style: BooksStyles.textStyle16Medium(context),
        ),
        Text(
          ' ($countRating)', // Number of reviews
          style: BooksStyles.textStyle14Medium(context).copyWith(
            color: Colors.grey,
          ),
        ),
      ],
    );
  }
}
