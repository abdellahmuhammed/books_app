import 'package:flutter/material.dart';

import 'BestSellerListViewItem.dart';
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
        itemBuilder: (context, index) => const BestSellerListViewItem(),
        // Builds each best seller item
        separatorBuilder: (BuildContext context, int index) => const SizedBox(
          height: 20, // Adds space between items
        ),
        itemCount: 30, // Number of best seller items
      ),
    );
  }
}
