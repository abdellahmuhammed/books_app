import 'package:flutter/material.dart';

import '../../../../Core/assets_helper/books_assets_helper.dart';
import 'CustomImage.dart';

class SimilarBooksItem extends StatelessWidget {
  const SimilarBooksItem({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height ;
    return CustomImage(assetsImage: BooksAssetsHelper.imagesBook , height: height * .16,)
    ;
  }
}
