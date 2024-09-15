// ignore_for_file: file_names

import 'package:flutter/material.dart';
import '../../../../Core/theme/books_theme.dart';
import 'BookActionButtons.dart';
import 'BookDetailsInfoSection.dart';
import 'SimilarBooksListView.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding:
            const EdgeInsets.only(top: 25, left: 30, right: 30, bottom: 40),
        child: Column(
          children: [
            const   BookDetailsInfoSection(),
            const SizedBox(
              height: 37,
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
           const SimilarBooksListView()
          ],
        ),
      ),
    );
  }
}




