import 'package:flutter/material.dart';

import '../../../../Core/theme/books_theme.dart';

class BestSellerPriceAndRatting extends StatelessWidget {
  const BestSellerPriceAndRatting({
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
        Text(
          '⭐  2.5 ', // Star rating
          style: BooksStyles.textStyle16Medium(context),
        ),
        Text(
          '  (500)', // Number of reviews
          style: BooksStyles.textStyle14Medium(context).copyWith(
            color: Colors.grey,
          ),
        ),
      ],
    );
  }
}
