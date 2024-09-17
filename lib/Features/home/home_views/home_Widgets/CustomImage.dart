// ignore_for_file: file_names

import 'package:flutter/material.dart';

class CustomImage extends StatelessWidget {
  const CustomImage({
    super.key, required this.imageUrl, this.aspectRatio = 2.5 / 4, this.height,
  });
  final String imageUrl ;
  final double aspectRatio ;
  final double? height ;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: AspectRatio(
        aspectRatio: aspectRatio,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            // Rounded corners for the book image
            image:  DecorationImage(
              image: NetworkImage(imageUrl),
              // Book cover image
              fit: BoxFit.fill, // Fill the container with the image
            ),
          ),
        ),
      ),
    );
  }
}
