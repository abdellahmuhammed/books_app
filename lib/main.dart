import 'package:bloc/bloc.dart';
import 'package:book_app/Core/theme/book_colors.dart';
import 'package:book_app/Core/utils/app_router.dart';
import 'package:book_app/myBlocObserver.dart';
import 'package:flutter/material.dart';
import 'Features/splash/splash_views/splash_view.dart';

void main() {
  Bloc.observer = MyBlocObserver();
  runApp(const BooksApp());
}

class BooksApp extends StatelessWidget {
  const BooksApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: BooksColor.kPrimaryColor,
        brightness: Brightness.dark
      ),
     routerConfig: BookRouter.router,
     // home:const SplashView(),
    );
  }
}
