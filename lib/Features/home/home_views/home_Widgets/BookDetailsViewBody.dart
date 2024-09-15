
import 'package:flutter/material.dart';

import '../../../../Core/assets_helper/books_assets_helper.dart';
import '../../../../Core/theme/books_theme.dart';
import 'BookRating.dart';
import 'CustomBookDetailsAppBar.dart';
import 'CustomImage.dart';
import 'SimilarBooksItem.dart';

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
            const CustomBookDetailsAppBar(),
            const SizedBox(
              height: 25,
            ),
            CustomImage(
              assetsImage: BooksAssetsHelper.imagesBook,
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
                  'The Jungle Book',
                  style: BooksStyles.textStyle30Bold(context),
                  maxLines: 2,
                ),
              ),
            ),
            const SizedBox(
              height: 4,
            ),
            Text(
              'The Jungle Book',
              style: BooksStyles.textStyle18Medium(context)
                  .copyWith(color: Colors.grey),
            ),
            const SizedBox(
              height: 14,
            ),
            const BookRating(
              mainAxisAlignment: MainAxisAlignment.center,
            ),
            const SizedBox(
              height: 37,
            ),
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



          ],
        ),
      ),
    );
  }
}




