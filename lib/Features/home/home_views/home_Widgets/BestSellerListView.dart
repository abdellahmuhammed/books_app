// ignore_for_file: file_names

import 'package:flutter/material.dart';

import '../../../../Core/utils/common_helpers.dart';
import 'BookListViewItem.dart';
// Widget for displaying the list of best-selling items

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 30, bottom: 15, top: 0),
      child: ListView.separated(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        // Adds a bouncy scrolling effect
        itemBuilder: (context, index) => const BookListViewItem(),
        // Builds each best seller item
        separatorBuilder: (BuildContext context, int index) =>  myDivider(height: 20),
        itemCount: 30, // Number of best seller items
      ),
    );
  }
}
