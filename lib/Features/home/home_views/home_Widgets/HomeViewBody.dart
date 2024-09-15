// ignore_for_file: file_names

import 'package:flutter/material.dart';
import '../../../../Core/theme/books_theme.dart';
import 'BestSellerListView.dart';
import 'CustomHomeViewAppBar.dart'; // Custom AppBar for the home view
import 'HomeFeatureListView.dart'; // Feature section for the home view

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Padding(
        // Adds padding on the horizontal axis (left and right)
        padding: const EdgeInsets.only(left: 30, right: 30, top: 48),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          // Aligns children to the left
          children: [
            // Adds vertical spacing equal to 6% of the screen height
            const CustomHomeViewAppBar(),
            // Displays the custom app bar for the home view
            const SizedBox(
              height: 46.9,
            ),
            // Adds vertical spacing equal to 2% of the screen height
            const HomeFeatureListView(),
            // Displays the feature section of the home view
            const SizedBox(
              height: 49,
            ),
            // Adds vertical spacing equal to 4% of the screen height
            Text(
              'Best Seller ',
              style: BooksStyles.textStyle18Bold(context),
            ),
            const SizedBox(
              height: 20,
            ),
            // Displays the "Best Seller" title using the current theme's headline style
            const BestSellerListView(),
            // Expands the "Best Seller" feature to fill the remaining vertical space
          ],
        ),
      ),
    );
  }
}
