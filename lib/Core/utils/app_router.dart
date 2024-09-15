import 'package:book_app/Features/home/home_views/home_layout_view.dart';
import 'package:go_router/go_router.dart';

import '../../Features/splash/splash_views/splash_view.dart';

abstract class BookRouter {
  static const String kHomeView = '/homeView';
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: kHomeView,
        builder: (context, state) => const HomeLayoutView(),
      ),
    ],
  );
}
