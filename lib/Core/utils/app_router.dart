import 'package:bookly_app/Core/utils/service_locator.dart';
import 'package:bookly_app/Features/home/home_models/home_data_model/book_model.dart';
import 'package:bookly_app/Features/home/home_models/home_repo/HomeRepoImplement.dart';
import 'package:bookly_app/Features/home/home_view_model/similar_books_cubit/similar_books_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../Features/home/home_views/book_details_view.dart';
import '../../Features/home/home_views/home_view.dart';
import '../../Features/search/search_view/search_view.dart';
import '../../Features/splash/splash_views/splash_view.dart';

/// Abstract class to manage routing within the book application.
abstract class BookRouter {
  // Route paths
  static const String kHomeView = '/homeView'; // Path for HomeView
  static const String kBookDetails = '/bookDetail'; // Path for BookDetailsView
  static const String kSearchView = '/searchView'; // Path for SearchView

  // GoRouter instance that defines the app's routes
  static final router = GoRouter(
    routes: [
      // Initial route for the SplashView
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      // Route for the HomeView
      GoRoute(
        path: kHomeView,
        builder: (context, state) => const HomeView(),
      ),
      // Route for the BookDetailsView
      GoRoute(
        path: kBookDetails,
        builder: (context, state) =>
            BlocProvider(
              create: (context) => SimilarBooksCubit(gitIt.get<HomeRepoImplement>()), // Providing the SimilarBooksCubit with the repository
              child: BookDetailsView(bookModel: state.extra as BookModel,), // Passing the selected BookModel
            ),
      ),
      // Route for the SearchView
      GoRoute(
        path: kSearchView,
        builder: (context, state) => const SearchView(),
      ),
    ],
  );
}
