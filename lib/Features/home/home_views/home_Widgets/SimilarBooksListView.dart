import 'package:flutter/material.dart';

import '../../../../Core/utils/helper.dart';
import 'SimilarBooksItem.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height*.16,
      child: ListView.separated(
        physics:const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (context, index) => const  SimilarBooksItem(),
        separatorBuilder: (BuildContext context, int index) => myDivider(width: 16),
      ),
    );

  }
}
