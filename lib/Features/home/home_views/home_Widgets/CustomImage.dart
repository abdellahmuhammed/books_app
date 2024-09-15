import 'package:flutter/material.dart';

class CustomImage extends StatelessWidget {
  const CustomImage({
    super.key, required this.assetsImage, this.aspectRatio = 2.5 / 4, this.height,
  });
  final String assetsImage ;
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
              image: AssetImage(assetsImage),
              // Book cover image
              fit: BoxFit.fill, // Fill the container with the image
            ),
          ),
        ),
      ),
    );
  }
}
