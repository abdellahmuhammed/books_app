import 'package:flutter/material.dart';

import 'home_Widgets/CustomHomeViewAppBar.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: HomeViewBody(),
    );
  }
}

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
          Expanded(child: ListView.builder(itemBuilder: (context , index)=> const Text('data'))),
        ],
      ),
    );
  }
}
