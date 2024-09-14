import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../Core/generated_assets/books_assets.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SvgPicture.asset(BookAssets.imagesLogo ,semanticsLabel:'Books Logo'),
          Text(
            'Tutorial Free Books',
            style: Theme.of(context).textTheme.titleLarge,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
