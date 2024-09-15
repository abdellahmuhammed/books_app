// ignore_for_file: use_build_context_synchronously

import 'package:book_app/Core/utils/app_router.dart';
import 'package:book_app/Core/utils/navigation_helper.dart';
import 'package:flutter/material.dart';
import '../../../Core/utils/route_to_home_with_animation.dart';
import 'splash_widgets/splash_view_body.dart';

// The SplashView widget is responsible for displaying the splash screen
class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

// The State of SplashView, managing the splash screen's behavior
class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    // This method will navigate to the HomeView after a delay
    _buildNavigateToHome();
  }

  @override
  Widget build(BuildContext context) {
    // The body of the splash screen, typically contains logo or animation
    return const SplashViewBody();
  }

  // A method that delays navigation for 2 seconds before transitioning to HomeView
  void _buildNavigateToHome() {
    Future.delayed(const Duration(seconds: 2), () {
      // Navigate to HomeView and remove all previous routes from the stack
      NavigationHelper.navigateToAndRemoveUntil(context,
          location: BookRouter.kHomeView, extra: buildRouteToHome());
    });
  }

}
