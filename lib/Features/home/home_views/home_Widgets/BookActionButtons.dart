// ignore_for_file: file_names

import 'package:bookly_app/Core/utils/function/custom_launch_url.dart';
import 'package:bookly_app/Features/home/home_models/home_data_model/book_model.dart';
import 'package:flutter/material.dart';
import '../../../../Core/widgets/CustomMaterialButton.dart';

/// Widget representing action buttons for a book.
/// Provides a preview link and other actions related to the book.
class BookActionButtons extends StatelessWidget {
  /// Constructor for the [BookActionButtons] widget.
  const BookActionButtons({super.key, required this.bookModel});

  /// The model representing the book for which the action buttons are displayed.
  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // Button showing the book's availability status as 'Free'.
         CustomMaterialButton(
          onTap: (){},
          text: 'Free',
          textColor: Colors.black,
          backgroundColor: Colors.white,
          topLeft: 8,
          bottomLeft: 8,
        ),
        // Button to launch the book preview link if available.
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

  /// Returns the appropriate button text based on the availability of the preview link.
  /// If the link is available, returns 'Free preview'. Otherwise, returns 'Not available now'.
  String customTextAction() {
    return bookModel.volumeInfo.previewLink != null
        ? 'Free preview'
        : 'Not available now';
  }
}
