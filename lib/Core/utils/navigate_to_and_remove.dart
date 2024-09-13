import 'package:flutter/material.dart';

// lib/core/utils/navigation_helper.dart

class NavigationHelper {
  // to navigator and push And Remove Until
  static void navigateToAndRemoveUntil(BuildContext context , {required Widget widget}) {
    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(builder: (context) => widget),
          (route) => false,
    );
  }

  // navigator and push

  static void navigateTo(BuildContext context , {required Widget widget}) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => widget));
  }
}
