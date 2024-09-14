// ignore_for_file: unused_element
import 'package:book_app/Core/theme/book_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class BooksThemes {
  ThemeData lightThem() {
    return _themData(
      backgroundColor: Colors.white,
      textColor: Colors.black,
      statusBarIconBrightness: Brightness.dark,
    );
  }

  ThemeData darkThem() {
    return _themData(
      backgroundColor: BooksColor.kPrimaryColor,
      textColor: Colors.white,
      statusBarIconBrightness: Brightness.light,
    );
  }

  ThemeData _themData({
    required Color backgroundColor,
    required Color textColor,
    required Brightness statusBarIconBrightness,
  }) {
    return ThemeData(
      useMaterial3: false,
      primarySwatch: Colors.blueGrey,
      scaffoldBackgroundColor: backgroundColor,
      textTheme: TextTheme(
        headlineLarge: _buildTextStyle(
          color: textColor,
        ),
        headlineSmall: _buildTextStyle(
          color: Colors.grey,
        ),
        titleLarge: _buildTextStyle(color: textColor, size: 25),
        titleSmall: _buildTextStyle(color: Colors.grey, size: 20),
        bodyLarge: _buildTextStyle(color: textColor, size: 20),
        bodySmall: _buildTextStyle(color: Colors.grey, size: 16),
      ),
      appBarTheme: AppBarTheme(
        systemOverlayStyle: SystemUiOverlayStyle(
          systemNavigationBarColor: textColor,
          statusBarIconBrightness: statusBarIconBrightness,
          statusBarColor: Colors.transparent,
        ),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        centerTitle: true,
        titleTextStyle: TextStyle(
          color: textColor,
          fontSize: 30.0,
          fontWeight: FontWeight.bold,
        ),
      ),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        iconSize: 35,
        backgroundColor: Colors.blueGrey,
        foregroundColor: backgroundColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
      ),
    );
  }

  _buildTextStyle(
      {required Color color,
      double size = 30,
      FontWeight fontWeight = FontWeight.bold}) {
    return TextStyle(color: color, fontSize: size, fontWeight: fontWeight);
  }

  _buildIconThemeData({required Color color, double size = 30}) {
    return IconThemeData(
      color: color,
      size: size,
    );
  }
}

class BooksStyles {
  // Text style for normal text with a font size of 12
  static TextStyle textStyle12Bold(BuildContext context) {
    return TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.bold,
      color: color(context),
    );
  }


  // Text style for normal text with a font size of 12 and medium weight
  static TextStyle textStyle12Medium(BuildContext context) {
    return TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w500,
      color: color(context),
    );
  }

  // Text style for normal text with a font size of 14
  static TextStyle textStyle14Bold(BuildContext context) {
    return TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.bold,
      color: color(context),
    );
  }

  // Text style for normal text with a font size of 14 and medium weight
  static TextStyle textStyle14Medium(BuildContext context) {
    return TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w500,
      color: color(context),
    );
  }

  // Text style for normal text with a font size of 16
  static TextStyle textStyle16Bold(BuildContext context) {
    return TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.bold,
      color: color(context),
    );
  }

  // Text style for normal text with a font size of 16 and medium weight
  static TextStyle textStyle16Medium(BuildContext context) {
    return TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w500,
      color: color(context),
    );
  }

  // Text style for normal text with a font size of 18
  static TextStyle textStyle18Bold(BuildContext context) {
    return TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.bold,
      color: color(context),
    );
  }

  // Text style for normal text with a font size of 18 and medium weight
  static TextStyle textStyle18Medium(BuildContext context) {
    return TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w500,
      color: color(context),
    );
  }

  // Text style for normal text with a font size of 20
  static TextStyle textStyle20Bold(BuildContext context) {
    return TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.bold,
      color: color(context),
    );
  }

  // Text style for normal text with a font size of 20 and medium weight
  static TextStyle textStyle20Medium(BuildContext context) {
    return TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.w500,
      color: color(context),
    );
  }

  // Text style for normal text with a font size of 24
  static TextStyle textStyle24Bold(BuildContext context) {
    return TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.bold,
      color: color(context),
    );
  }

  // Text style for normal text with a font size of 24 and medium weight
  static TextStyle textStyle24Medium(BuildContext context) {
    return TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.w500,
      color: color(context),
    );
  }

  // Text style for normal text with a font size of 28
  static TextStyle textStyle28Bold(BuildContext context) {
    return TextStyle(
      fontSize: 28,
      fontWeight: FontWeight.bold,
      color: color(context),
    );
  }

  // Text style for normal text with a font size of 28 and medium weight
  static TextStyle textStyle28Medium(BuildContext context) {
    return TextStyle(
      fontSize: 28,
      fontWeight: FontWeight.w500,
      color: color(context),
    );
  }

  // Text style for normal text with a font size of 30
  static TextStyle textStyle30Bold(BuildContext context) {
    return TextStyle(
      fontSize: 30,
      fontWeight: FontWeight.bold,
      color: color(context),
    );
  }

  // Text style for normal text with a font size of 30 and medium weight
  static TextStyle textStyle30Medium(BuildContext context) {
    return TextStyle(
      fontSize: 30,
      fontWeight: FontWeight.w500,
      color: color(context),
    );
  }
  static Color color(BuildContext context) => Theme.of(context).brightness == Brightness.dark ? Colors.white : Colors.black;

}
