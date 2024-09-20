// ignore_for_file: file_names

import 'package:flutter/material.dart';
import '../../../../Core/theme/books_theme.dart';
import '../../../../Core/utils/Book_navigation.dart';
import '../../../../Core/utils/app_router.dart';
import 'BookPriceAndRatting.dart';
import 'CustomImage.dart';
// Widget representing a single best seller item

class BookListViewItem extends StatelessWidget {
  const BookListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        BookNavigation.navigateTo(context, location: BookRouter.kBookDetails ,);
      },
      child: SizedBox(
        height: MediaQuery.of(context).size.height*.15, // Dynamic height based on screen size,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          // Aligns items at the top
          children: [
            // Image container for the book cover
            const CustomImage(
              imageUrl: 'http://books.google.com/books/content?id=mIxQAAAAMAAJ&printsec=frontcover&img=1&zoom=1&imgtk=AFLRE71ZfbUgil40NxJYE6pfN0G36G9vxKvbYaybMK5e75LEKkaiq1njLj4ab40n6-WavJvdyys1uXwen9uAidhzUrKfpOTrcsXJTCM3XlX-AYGHn5iRP0OHpaOCbv6Rh_GrUqEiGY_0&source=gbs_api',
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
                  const BookPriceAndRatting(),
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
