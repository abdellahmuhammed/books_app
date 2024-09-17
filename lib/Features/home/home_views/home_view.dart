import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import '../../../Core/utils/api_services.dart';
import '../home_models/home_repo/HomeRepoImplement.dart';
import 'home_Widgets/HomeViewBody.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body:HomeViewBody(),
    );
  }
}


