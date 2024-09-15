import 'package:flutter/material.dart';

import '../../../../Core/widgets/CustomMaterialButton.dart';

class BookActionButtons extends StatelessWidget {
  const BookActionButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomMaterialButton(
          text: '2587 ',
          textColor: Colors.black,
          backgroundColor: Colors.white,
          topLeft: 8,
          bottomLeft: 8,
        ),
        CustomMaterialButton(
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
