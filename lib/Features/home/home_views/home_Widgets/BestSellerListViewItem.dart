import 'package:book_app/Core/utils/app_router.dart';
import 'package:flutter/material.dart';
import '../../../../Core/theme/books_theme.dart';
import '../../../../Core/utils/navigation_helper.dart';
import 'BestSellerPriceAndRatting.dart';
import 'CustomImage.dart';
// Widget representing a single best seller item

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        BookNavigation.navigateTo(context, location: BookRouter.kBookDetails);
      },
      child: SizedBox(
        height: 105, // Dynamic height based on screen size,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          // Aligns items at the top
          children: [
            // Image container for the book cover
            const CustomImage(
              assetsImage: 'assets/images/book.jfif',
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
                      overflow: TextOverflow.ellipsis,
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
                  const BestSellerPriceAndRatting(),
                  // Adds a small gap
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
