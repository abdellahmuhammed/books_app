
import 'package:flutter/material.dart';

import 'CustomImage.dart';

class HomeFeatureBookItem extends StatelessWidget {
  final String bookImageUrl;
  final VoidCallback onTap;

  const HomeFeatureBookItem({
    super.key,
    required this.bookImageUrl,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: CustomImage(
        imageUrl: bookImageUrl,
      ),
    );
  }
}
