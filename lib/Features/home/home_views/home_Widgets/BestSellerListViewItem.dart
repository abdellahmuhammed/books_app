
import 'package:flutter/material.dart';

import '../../../../Core/theme/books_theme.dart';
// Widget representing a single best seller item

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 105, // Dynamic height based on screen size,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start, // Aligns items at the top
        children: [
          // Image container for the book cover
          AspectRatio(
            aspectRatio: 2.5 / 4,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                // Rounded corners for the book image
                image: const DecorationImage(
                  image: AssetImage('assets/images/book.jfif'),
                  // Book cover image
                  fit: BoxFit.fill, // Fill the container with the image
                ),
              ),
            ),
          ),
          // Adds space between the image and the text
          const SizedBox(
            width: 30,
          ),

          // Column for the book's details (title, author, price, rating)
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              // Aligns text to the left
              children: [
                SizedBox(
                  child: Text(
                    'Harry Potter and the Goblet of Fire',
                    maxLines: 2,
                    overflow:TextOverflow.ellipsis,
                    style: BooksStyles.textStyle20Medium(context),
                  ),
                ),
                // Book title
                const SizedBox(
                  width: 2,
                ), // Adds a small gap
                Text(
                  'J.K. Rowling',
                  style: BooksStyles.textStyle14Medium(context)
                      .copyWith(color: Colors.grey),
                ),
                // Row to display price and rating
                _buildPriceAndRating(context),
                // Adds a small gap
              ],
            ),
          ),
        ],
      ),
    );
  }

  Row _buildPriceAndRating(BuildContext context) {
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
