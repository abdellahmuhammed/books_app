import 'package:book_app/Core/theme/books_theme.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(
          top: 50,
          right: 30,
          left: 30,
          bottom: 30,
        ),
        child: Column(
          children: [
            Text(
              'Searching abut Book you are need it?',
              style: BooksStyles.textStyle24Bold(context),
            ),
            const SizedBox(
              height: 20,
            ),
            const CustomSearchTextFiled(),
          ],
        ),
      ),
    );
  }
}

