// ignore_for_file: file_names

import 'package:bookly_app/Core/widgets/custom_circular_indicator.dart';
import 'package:flutter/material.dart';
import '../../../../Core/theme/books_theme.dart';
import '../../home_models/home_data_model/book_model.dart';
import 'CustomBookDetailsAppBar.dart';
import 'CustomImage.dart';

/// A widget that displays detailed information about a book, including title, author, and cover image.
class BookDetailsInfoSection extends StatelessWidget {
  /// Constructor for the [BookDetailsInfoSection] widget.
  const BookDetailsInfoSection({super.key, required this.bookModel});

  /// The model representing the book details to be displayed.
  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Custom app bar for book details view.
        const CustomBookDetailsAppBar(),
        const SizedBox(
          height: 20,
        ),
        // Displays the book's cover image.
        CustomImage(
          imageUrl:
          '${bookModel.volumeInfo.imageLinks?.thumbnail ?? const CustomCircularIndicator()}',
          height: MediaQuery.of(context).size.height * .30,
          aspectRatio: 3 / 4,
        ),
        const SizedBox(
          height: 30,
        ),
        // Book title section, centered and styled.
        SizedBox(
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 70),
            child: Text(
              bookModel.volumeInfo.title!,
              style: BooksStyles.textStyle30Bold(context),
              maxLines: 2,
              textAlign: TextAlign.center,
            ),
          ),
        ),
        const SizedBox(
          height: 4,
        ),
        // Book author section, if available, otherwise defaults to 'unknown author'.
        Text(
          bookModel.volumeInfo.authors?[0] ?? 'unknown author',
          style: BooksStyles.textStyle18Medium(context)
              .copyWith(color: Colors.grey),
        ),
        const SizedBox(
          height: 10,
        ),
      ],
    );
  }
}
