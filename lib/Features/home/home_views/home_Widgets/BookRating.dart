// ignore_for_file: file_names

import 'package:flutter/material.dart';

import '../../../../Core/theme/books_theme.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key,  this.mainAxisAlignment = MainAxisAlignment. start});
final MainAxisAlignment mainAxisAlignment;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        Text(
          '⭐ 2.5 ', // Star rating
          style: BooksStyles.textStyle16Medium(context),
        ),
        Text(
          ' (500)', // Number of reviews
          style: BooksStyles.textStyle14Medium(context).copyWith(
            color: Colors.grey,
          ),
        ),
      ],
    );
  }
}
