// ignore_for_file: use_build_context_synchronously

import 'package:book_app/Core/utils/navigate_to_and_remove.dart';
import 'package:book_app/Features/home/home_view.dart';
import 'package:flutter/material.dart';
import 'widgets/splash_view_body.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2), () {
      NavigationHelper.navigateToAndRemoveUntil(context,
          widget: const HomeView());
    });
  }

  @override
  Widget build(BuildContext context) {
    return const SplashViewBody();
  }
}

