import 'package:bloc/bloc.dart';
import 'package:book_app/myBlocObserver.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

import 'Core/theme/books_theme.dart';
import 'Features/splash/splash_views/splash_view.dart';

void main() {
  Bloc.observer = MyBlocObserver();
  runApp(const BooksApp());
}

class BooksApp extends StatelessWidget {
  const BooksApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: BooksThemes().darkThem(),
      home:const SplashView(),
    );
  }
}
