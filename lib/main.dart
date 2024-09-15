import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'Core/theme/book_colors.dart';
import 'Core/utils/app_router.dart';
import 'myBlocObserver.dart';
void main() {
  Bloc.observer = MyBlocObserver();
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

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
