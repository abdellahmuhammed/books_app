// ignore_for_file: file_names

import 'package:bookly_app/Features/home/home_models/home_data_model/book_model.dart';
import 'package:flutter/material.dart';
import '../../../../Core/theme/books_theme.dart';
import 'BookActionButtons.dart';
import 'BookDetailsInfoSection.dart';
import 'SimilarBooksListView.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key, required this.bookModel});
final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding:
            const EdgeInsets.only(top: 25, left: 30, right: 30, bottom: 10),
        child: Column(
          children: [
               BookDetailsInfoSection(bookModel: bookModel,),
            const SizedBox(
              height: 15,
            ),
           const BookActionButtons(),
            const SizedBox(
              height: 30,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'You can also like',
                style: BooksStyles.textStyle14Bold(context)
                    ,
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            SimilarBooksListView(bookModel: bookModel,)
          ],
        ),
      ),
    );
  }
}




