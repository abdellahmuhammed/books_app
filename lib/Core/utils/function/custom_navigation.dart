// ignore_for_file: file_names

import 'package:go_router/go_router.dart';

/// Utility file for custom navigation functions.
/// It provides easy-to-use functions for navigating between pages in the app.

/// Navigates to a specific location and removes all previous routes from the stack.
/// [context] - The current BuildContext.
/// [location] - The route path to navigate to.
/// [extra] - Optional data to pass to the new page.
void navigateToAndRemoveUntil(
     context, {
      Object? extra,
      required String location,
    }) =>
    // Navigate to the specified location and clear all previous routes.
GoRouter.of(context).go(location, extra: extra);

/// Pushes a new page onto the navigation stack without removing previous pages.
/// [context] - The current BuildContext.
/// [location] - The route path to navigate to.
/// [extra] - Optional data to pass to the new page.
void navigateTo(
     context, {
      Object? extra,
      required String location,
    }) =>
    // Push a new page onto the stack, keeping the current pages intact.
GoRouter.of(context).push(location, extra: extra);
