// ignore_for_file: file_names

import 'package:go_router/go_router.dart';

// lib/core/utils/Book_navigation.dart

abstract class BookNavigation {
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
