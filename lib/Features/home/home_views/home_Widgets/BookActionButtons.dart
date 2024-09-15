import 'package:flutter/material.dart';

import 'BookDetailsViewBody.dart';

class BookActionButtons extends StatelessWidget {
  const BookActionButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        BookIconButton(
          text: '2587 ',
          textColor: Colors.black,
          backgroundColor: Colors.white,
          topLeft: 8,
          bottomLeft: 8,
        ),
        BookIconButton(
          text: 'Free preview',
          backgroundColor: Color(0xffEF8262),
          topRight: 8,
          bottomRight: 8,
          fontSize: 16,
        ),
      ],
    )
    ;
  }
}
