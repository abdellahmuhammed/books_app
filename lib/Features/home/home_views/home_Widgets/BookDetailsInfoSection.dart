// ignore_for_file: file_names

import 'package:bookly_app/Core/widgets/custom_circular_indicator.dart';
import 'package:flutter/material.dart';
import '../../../../Core/theme/books_theme.dart';
import '../../home_models/home_data_model/book_model.dart';
import 'CustomBookDetailsAppBar.dart';
import 'CustomImage.dart';

class BookDetailsInfoSection extends StatelessWidget {
  const BookDetailsInfoSection({super.key, required this.bookModel});

  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomBookDetailsAppBar(),
        const SizedBox(
          height: 20,
        ),
        CustomImage(
          imageUrl:
              '${bookModel.volumeInfo.imageLinks?.thumbnail ?? const CustomCircularIndicator()}',
          height: MediaQuery.of(context).size.height * .30,
          aspectRatio: 3 / 4,
        ),
        const SizedBox(
          height: 30,
        ),
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
