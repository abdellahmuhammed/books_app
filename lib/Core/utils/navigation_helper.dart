import 'package:go_router/go_router.dart';

// lib/core/utils/navigation_helper.dart

abstract class NavigationHelper {
  static void navigateToAndRemoveUntil(
    context, {
    Object? extra,
    required String location,
  }) =>
      GoRouter.of(context).go(location, extra: extra);

  // navigator and push
  static void navigateTo(
    context, {
    Object? extra,
    required String location,
  }) =>
      GoRouter.of(context).push(location, extra: extra);
}
