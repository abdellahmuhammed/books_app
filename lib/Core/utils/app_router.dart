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

abstract class BookRouter {
  static const String kHomeView = '/homeView';
  static const String kBookDetails = '/bookDetail';
  static const String kSearchView = '/searchView';
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: kHomeView,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: kBookDetails,
        builder: (context, state) =>
            BlocProvider(
              create: (context) => SimilarBooksCubit(gitIt.get<HomeRepoImplement>()),
              child: BookDetailsView(bookModel: state.extra as BookModel,),
            ),
      ),
      GoRoute(
        path: kSearchView,
        builder: (context, state) => const SearchView(),
      ),
    ],
  );
}
