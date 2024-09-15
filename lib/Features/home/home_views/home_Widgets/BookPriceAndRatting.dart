import 'package:book_app/Features/home/home_views/home_Widgets/BookRating.dart';
import 'package:flutter/material.dart';

import '../../../../Core/theme/books_theme.dart';

class BookPriceAndRatting extends StatelessWidget {
  const BookPriceAndRatting({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          '19.99 €',
          style: BooksStyles.textStyle20Medium(context),
        ),

         const Spacer(), // Fills space between price and rating
        const BookRating(),
      ],
    );
  }
}
