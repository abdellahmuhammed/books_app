// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'CustomImage.dart';

class SimilarBooksItem extends StatelessWidget {
  const SimilarBooksItem({super.key, required this.imageUrl});
final String imageUrl;
  @override
  Widget build(BuildContext context) {
    return  CustomImage(imageUrl: imageUrl ,)
    ;
  }
}
