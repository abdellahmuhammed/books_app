import 'package:book_app/Core/assets_helper/books_assets_helper.dart';
import 'package:book_app/Features/home/home_views/home_Widgets/CustomImage.dart';
import 'package:flutter/material.dart';

class HomeFeatureItem extends StatelessWidget {
  const HomeFeatureItem({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomImage(assetsImage: BooksAssetsHelper.imagesBook);
  }
}
// MediaQuery.of(context).size.width*.45,