
import 'package:flutter/material.dart';

import 'HomeFeatureListView.dart';

class HomeViewFeature extends StatelessWidget {
  const HomeViewFeature({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.width*.66,
      child: ListView.separated(
        physics:const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (context, index) => const HomeFeatureListView(),
        separatorBuilder: (BuildContext context, int index) => const SizedBox(width: 10,),
      ),
    );
  }
}
