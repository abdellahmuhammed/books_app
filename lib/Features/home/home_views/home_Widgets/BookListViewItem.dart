// ignore_for_file: file_names

import 'package:bookly_app/Core/widgets/custom_circular_indicator.dart';
import 'package:bookly_app/Features/home/home_models/home_data_model/book_model.dart';
import 'package:flutter/material.dart';
import '../../../../Core/theme/books_theme.dart';
import '../../../../Core/utils/function/custom_navigation.dart';
import '../../../../Core/utils/app_router.dart';
import 'BookPriceAndRatting.dart';
import 'CustomImage.dart';
// Widget representing a single best seller item

class BookListViewItem extends StatelessWidget {
  const BookListViewItem({super.key, required this.bookModel});

  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        navigateTo(
          context,
          location: BookRouter.kBookDetails,
          extra: bookModel
        );

      },
      child: SizedBox(
        height: MediaQuery.of(context).size.height *
            .15, // Dynamic height based on screen size,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          // Aligns items at the top
          children: [
            // Image container for the book cover
            CustomImage(
              height: MediaQuery.of(context).size.height * .13,
              imageUrl:
                  '${bookModel.volumeInfo.imageLinks?.thumbnail ?? const CustomCircularIndicator()}',
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
                      bookModel.volumeInfo.title.toString(),
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
                    'author : ${bookModel.volumeInfo.authors?[0].toString() ?? 'author Unknown'}',
                    style: BooksStyles.textStyle14Medium(context)
                        .copyWith(color: Colors.grey),
                  ),
                  const SizedBox(
                    width: 2,
                  ),

                  Text(
                    'publisher : ${bookModel.volumeInfo.publisher ?? 'publisher Unknown'}',
                    style: BooksStyles.textStyle14Medium(context)
                        .copyWith(color: Colors.grey),
                  ),

                  // Row to display price and rating
                  BookPriceAndRatting(
                    averageRating: (bookModel.volumeInfo.averageRating )?.toInt() ?? 0,
                    countRating: bookModel.volumeInfo.ratingsCount ?? 0,
                  ),
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
