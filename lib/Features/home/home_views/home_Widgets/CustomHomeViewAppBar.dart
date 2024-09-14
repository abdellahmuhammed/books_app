import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart'; // To handle SVG images

import '../../../../Core/assets_helper/books_assets_helper.dart'; // Import for the assets helper file

// CustomHomeViewAppBar is a custom app bar widget for the home view
class CustomHomeViewAppBar extends StatelessWidget {
  const CustomHomeViewAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    // The Row widget arranges its children horizontally
    return Row(
      children: [
        // Displaying the logo as an SVG image with height 30
        SvgPicture.asset(
          BooksAssetsHelper.imagesLogo,
          height: 30, // SVG image with height 30
        ),

        // Spacer widget to push the search icon to the right
        const Spacer(),

        // Search button with an icon
        IconButton(
          onPressed: () {
            // Action when the search button is pressed (currently empty)
          },
          icon: const Icon(
            Icons.search, // Search icon
            color: Colors.white, // Icon color is white
            size: 30, // Icon size is set to 30
          ),
        ),
      ],
    );
  }
}
