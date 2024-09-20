// ignore_for_file: file_names

import 'package:flutter/material.dart';

import '../../../../Core/utils/common_helpers.dart';
import '../../../home/home_views/home_Widgets/BookListViewItem.dart';

class SearchListView extends StatelessWidget {
  const SearchListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(right: 30, bottom: 15, top: 0),
        child: ListView.separated(
          physics: const BouncingScrollPhysics(),
          // Adds a bouncy scrolling effect
          itemBuilder: (context, index) => Text('data'),

          //const BookListViewItem(),
          // Builds each best seller item
          separatorBuilder: (BuildContext context, int index) => myDivider(height: 20),
          itemCount: 30, // Number of best seller items
        ),
      ),
    );
  }


}
