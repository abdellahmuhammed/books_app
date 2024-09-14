import 'package:flutter/material.dart';

import 'CustomHomeViewAppBar.dart';
import 'HomeViewFeature.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * .06,
          ),
          const CustomHomeViewAppBar(),
          SizedBox(
            height: MediaQuery.of(context).size.height * .02,
          ),
          const HomeViewFeature()
        ],
      ),
    );
  }
}
