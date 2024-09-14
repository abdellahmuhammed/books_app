import 'package:book_app/Core/theme/books_theme.dart';
import 'package:flutter/material.dart';

import '../../../../Core/utils/helper.dart';
import 'CustomHomeViewAppBar.dart'; // Custom AppBar for the home view
import 'HomeViewFeature.dart'; // Feature section for the home view

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      // Adds padding on the horizontal axis (left and right)
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        // Aligns children to the left
        children: [
          customSizedBox(context, height: 0.06),
          // Adds vertical spacing equal to 6% of the screen height
          const CustomHomeViewAppBar(),
          // Displays the custom app bar for the home view
          customSizedBox(context, height: 0.02),
          // Adds vertical spacing equal to 2% of the screen height
          const HomeViewFeature(),
          // Displays the feature section of the home view
          customSizedBox(context, height: 0.04),
          // Adds vertical spacing equal to 4% of the screen height
          Text(
            'Best Seller ',
            style: BooksStyles.textStyle18Bold(context),
          ),
          // Displays the "Best Seller" title using the current theme's headline style
          const BestSellerListView(),
          // Expands the "Best Seller" feature to fill the remaining vertical space
        ],
      ),
    );
  }
}

// Widget for displaying the list of best-selling items
class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(right: 30, bottom: 15),
        child: ListView.separated(
          physics: const BouncingScrollPhysics(),
          // Adds a bouncy scrolling effect
          itemBuilder: (context, index) => const BestSellerItem(),
          // Builds each best seller item
          separatorBuilder: (BuildContext context, int index) => const SizedBox(
            height: 15, // Adds space between items
          ),
          itemCount: 6, // Number of best seller items
        ),
      ),
    );
  }
}

// Widget representing a single best seller item
class BestSellerItem extends StatelessWidget {
  const BestSellerItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height *
          .13, // Dynamic height based on screen size,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start, // Aligns items at the top
        children: [
          // Image container for the book cover
          AspectRatio(
            aspectRatio: 2.5 / 4,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                // Rounded corners for the book image
                image: const DecorationImage(
                  image: AssetImage('assets/images/book.jfif'),
                  // Book cover image
                  fit: BoxFit.fill, // Fill the container with the image
                ),
              ),
            ),
          ),
          // Adds space between the image and the text
          customSizedBox(context, width: .04),

          // Column for the book's details (title, author, price, rating)
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              // Aligns text to the left
              children: [
                Text(
                  'Harry Potter and the \nGoblet of Fire',
                  style: BooksStyles.textStyle20Medium(context),
                ),
                // Book title
                customSizedBox(context, height: .006),
                // Adds a small gap
                Text(
                  'J.K. Rowling',
                  style: BooksStyles.textStyle14Medium(context)
                      .copyWith(color: Colors.grey),
                ),
                // Author name
                customSizedBox(context, height: .007),
                // Adds a small gap

                // Row to display price and rating
                Row(
                  children: [
                    Text(
                      '19.99 €',
                      style: BooksStyles.textStyle20Medium(context),
                    ),

                    const Spacer(), // Fills space between price and rating
                    Text(
                      '⭐  2.5 ', // Star rating
                      style: BooksStyles.textStyle16Medium(context),
                    ),
                    Text(
                      '  (500)', // Number of reviews
                      style: BooksStyles.textStyle14Medium(context)
                          .copyWith(color: Colors.grey),
                    ),
                  ],
                ),
                customSizedBox(context, height: .002),
                // Adds a small gap
              ],
            ),
          ),
        ],
      ),
    );
  }
}
