// CustomBookDetailsAppBar is a custom app bar widget for the home view
import 'package:flutter/material.dart';

class CustomBookDetailsAppBar extends StatelessWidget {
  const CustomBookDetailsAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    // The Row widget arranges its children horizontally
    return Row(
      children: [
        // Displaying the logo as an SVG image with height 30
        IconButton(onPressed: (){}, icon:const Icon(Icons.close)),

        // Spacer widget to push the search icon to the right
        const Spacer(),

        // Search button with an icon
        IconButton(
          onPressed: () {
            // Action when the search button is pressed (currently empty)
          },
          icon: const Icon(
            Icons.shopping_cart, // Search icon
            color: Colors.white, // Icon color is white
            size: 24, // Icon size is set to 30
          ),
        ),
      ],
    );
  }
}
