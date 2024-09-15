import 'package:flutter/material.dart';

import '../../../../Core/theme/books_theme.dart';

class CustomSearchTextFiled extends StatelessWidget {
  const CustomSearchTextFiled({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        label: Text(
          'searching ',
          style: BooksStyles.textStyle24Medium(context)
              .copyWith(color: Colors.grey),
        ),
        suffixIcon:const Icon(Icons.search , color: Colors.grey,),
        enabledBorder: _buildOutlineInputBorder(),
        focusedBorder: _buildOutlineInputBorder(),
      ),
    );
  }

  OutlineInputBorder _buildOutlineInputBorder() {
    return OutlineInputBorder(
      borderSide: const BorderSide(color: Colors.white),
      borderRadius: BorderRadius.circular(8),
    );
  }
}
