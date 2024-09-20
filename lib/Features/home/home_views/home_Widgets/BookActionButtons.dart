// ignore_for_file: file_names

import 'package:bookly_app/Core/utils/function/custom_launch_url.dart';
import 'package:bookly_app/Features/home/home_models/home_data_model/book_model.dart';
import 'package:flutter/material.dart';
import '../../../../Core/widgets/CustomMaterialButton.dart';

class BookActionButtons extends StatelessWidget {
  const BookActionButtons({super.key, required this.bookModel});

  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const CustomMaterialButton(
          text: 'Free' ,
          textColor: Colors.black,
          backgroundColor: Colors.white,
          topLeft: 8,
          bottomLeft: 8,
        ),
        CustomMaterialButton(
          onTap: () {
            customLaunchCustomUr(context, bookModel.volumeInfo.previewLink);
          },
          text: customTextAction(),
          backgroundColor: const Color(0xffEF8262),
          topRight: 8,
          bottomRight: 8,
          fontSize: 16,
        ),
      ],
    );
  }

  String customTextAction() {
    return bookModel.volumeInfo.previewLink != null
        ? 'Free preview '
        : ' not available now ';
  }
}
