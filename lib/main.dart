
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'Core/theme/book_colors.dart';
import 'Core/utils/app_router.dart';
import 'Core/utils/service_locator.dart';
import 'Features/home/home_view_model/feature_books_cubit/feature_books_cubit.dart';
import 'Features/home/home_view_model/news_books_cubit/news_cubit.dart';
import 'myBlocObserver.dart';

void main() {
  Bloc.observer = MyBlocObserver();
  setupServiceLocator();
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => FeatureBooksCubit(gitIt.get())..fetchFeatureBooks(),
        ),
        BlocProvider(
          create: (context) => NewsBookCubit(gitIt.get())..fetchNewsBooks(),
        ),
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            scaffoldBackgroundColor: BooksColor.kPrimaryColor,
            brightness: Brightness.dark
        ),
        routerConfig: BookRouter.router,
        // home:const SplashView(),
      ),
    );
  }
}
