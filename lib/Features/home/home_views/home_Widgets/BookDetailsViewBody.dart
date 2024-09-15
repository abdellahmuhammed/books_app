import 'package:book_app/Features/home/home_views/home_Widgets/BookPriceAndRatting.dart';
import 'package:flutter/material.dart';

import '../../../../Core/assets_helper/books_assets_helper.dart';
import '../../../../Core/theme/books_theme.dart';
import 'BookRating.dart';
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
                padding: const EdgeInsets.symmetric(horizontal: 70),
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
          const  BookRating(mainAxisAlignment: MainAxisAlignment.center,),
            const PricePreviewButton(),
          ],
        ),
      ),
    );
  }
}

class PricePreviewButton extends StatelessWidget {
  const PricePreviewButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(4.0), // التحكم في الحواف الخارجية
      decoration: BoxDecoration(
        color: Colors.black, // لون الخلفية المحيطة
        borderRadius: BorderRadius.circular(30.0), // نصف القطر للحواف الدائرية
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min, // تجعل الحجم يتناسب مع المحتوى
        children: [
          // الجزء الخاص بالسعر
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0), // مساحة داخلية للنص
            decoration: const BoxDecoration(
              color: Colors.white, // لون الخلفية
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(8.0),
                bottomLeft: Radius.circular(8.0),
              ),
            ),
            child: const Text(
              '19.99€',
              style: TextStyle(
                color: Colors.black, // لون النص
                fontSize: 16.0,
              ),
            ),
          ),
          // الجزء الخاص بـ Free preview
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0), // مساحة داخلية للنص
            decoration: const BoxDecoration(
              color: Colors.orange, // لون الخلفية
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(8.0),
                bottomRight: Radius.circular(8.0),
              ),
            ),
            child: const Text(
              'Free preview',
              style: TextStyle(
                color: Colors.white, // لون النص
                fontSize: 16.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
