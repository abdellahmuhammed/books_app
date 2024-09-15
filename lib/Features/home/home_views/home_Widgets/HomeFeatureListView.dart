
import 'package:book_app/Core/utils/helper.dart';
import 'package:flutter/material.dart';

import 'HomeFeatureItem.dart';

class HomeFeatureListView extends StatelessWidget {
  const HomeFeatureListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.width*.6,
      child: ListView.separated(
        physics:const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (context, index) => const HomeFeatureListViewItem(),
        separatorBuilder: (BuildContext context, int index) => myDivider(width: 20),
      ),
    );
  }
}
