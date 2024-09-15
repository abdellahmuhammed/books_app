import 'package:flutter/material.dart';

import '../../../../Core/assets_helper/books_assets_helper.dart';
import '../../../../Core/theme/books_theme.dart';
import 'CustomBookDetailsAppBar.dart';
import 'CustomImage.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(top: 35 , left: 30 ,right: 30,bottom: 40),
        child: Column(
          children: [
            const CustomBookDetailsAppBar(),
            const SizedBox(height: 35,),
            CustomImage(
              assetsImage: BooksAssetsHelper.imagesBook,
              height: MediaQuery.of(context).size.height *.37,
              aspectRatio: 3 / 4,
            ),
            const SizedBox(height: 40,),
            SizedBox(
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.only(left: 40),
                child: Text('The Jungle Book'
                  , style: BooksStyles.textStyle30Bold(context),
                  maxLines: 2,
                ),
              ) ,
            ),
            const SizedBox(height: 4,),
            Text('The Jungle Book'
              , style: BooksStyles.textStyle18Medium(context).copyWith(color: Colors.grey),
            ),
            const SizedBox(height: 14,),


          ],
        ),
      ),
    );
  }
}
