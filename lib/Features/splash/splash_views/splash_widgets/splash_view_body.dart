import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart'; // To handle SVG image

import '../../../../Core/assets_helper/books_assets.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    // The Scaffold widget is the base structure of the screen
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        // Aligns items vertically in the center
        crossAxisAlignment: CrossAxisAlignment.stretch,
        // Stretches items horizontally to take full width
        children: [
          // Displaying the SVG logo with a height of 40
          SvgPicture.asset(
            BooksAssetsHelper.imagesLogo,
            semanticsLabel: 'Books Logo', // Screen readers use this label
            height: 40,
          ),
          const SizedBox(
            height: 30,
          ), // Adds spacing between the logo and text

          // Displaying the text 'Tutorial Free Books' with theme-based styling
          Text(
            'Tutorial Free Books',
            style: Theme.of(context).textTheme.headlineLarge,
            // Uses the large headline from the current theme
            textAlign: TextAlign.center, // Centers the text horizontally
          ),
        ],
      ),
    );
  }
}
