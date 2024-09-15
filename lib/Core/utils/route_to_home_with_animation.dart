// This method builds a custom route to HomeView with a slide transition animation
import 'package:flutter/material.dart';

import '../../Features/home/home_views/home_layout_view.dart';

Route buildRouteToHome() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) =>
    const HomeLayoutView(),
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