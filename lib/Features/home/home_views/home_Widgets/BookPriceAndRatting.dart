// ignore_for_file: file_names

import 'package:flutter/material.dart';

import '../../../../Core/theme/books_theme.dart';
import 'BookRating.dart';

class BookPriceAndRatting extends StatelessWidget {
  const BookPriceAndRatting({
    super.key, required this.averageRating, required this.countRating,
  });
  final num averageRating;
  final int countRating;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Free',
          style: BooksStyles.textStyle20Medium(context),
        ),

         const Spacer(), // Fills space between price and rating
        BookRating(averageRating: averageRating, countRating: countRating,),
      ],
    );
  }
}
