// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import '../../../Core/utils/Book_navigation.dart';
import '../../../Core/utils/app_router.dart';
import '../../home/home_views/home_view.dart';
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
      BookNavigation.navigateToAndRemoveUntil(context,
          location: BookRouter.kHomeView, extra: buildRouteToHome());
    });
  }

  Route buildRouteToHome() {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) =>
          const HomeView(),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        const begin =
            Offset(0.0, 1.0); // Animation starts from left (outside screen)
        const end = Offset.zero; // Animation ends at the center of the screen
        const curve =
            Curves.easeInOutCubicEmphasized; // A smooth animation curve

        // Creates a Tween to animate the transition from `begin` to `end` using the defined curve
        var tween =
            Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
        var offsetAnimation = animation.drive(tween);

        // Returns the SlideTransition widget, which moves the screen from right to center
        return SlideTransition(
          position: offsetAnimation,
          child: child,
        );
      },
    );
  }
}
