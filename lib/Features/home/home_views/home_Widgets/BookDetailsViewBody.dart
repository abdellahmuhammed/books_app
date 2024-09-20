// ignore_for_file: file_names

import 'package:bookly_app/Features/home/home_models/home_data_model/book_model.dart';
import 'package:flutter/material.dart';
import '../../../../Core/theme/books_theme.dart';
import 'BookActionButtons.dart';
import 'BookDetailsInfoSection.dart';
import 'SimilarBooksListView.dart';

/// A widget that represents the main body of the book details view,
/// displaying the book's information, action buttons, and a list of similar books.
class BookDetailsViewBody extends StatelessWidget {
  /// Constructor for the [BookDetailsViewBody] widget.
  const BookDetailsViewBody({super.key, required this.bookModel});

  /// The model representing the book details to be displayed.
  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding:
        const EdgeInsets.only(top: 25, left: 30, right: 30, bottom: 10),
        child: Column(
          children: [
            // Displays the book's details information.
            BookDetailsInfoSection(bookModel: bookModel),
            const SizedBox(
              height: 15,
            ),
            // Displays action buttons related to the book (e.g., preview, buy).
            BookActionButtons(bookModel: bookModel),
            const SizedBox(
              height: 30,
            ),
            // Header for the similar books section.
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'You can also like',
                style: BooksStyles.textStyle14Bold(context),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            // Displays a list of books similar to the current book.
            SimilarBooksListView(bookModel: bookModel),
          ],
        ),
      ),
    );
  }
}
