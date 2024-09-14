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

  _buildTextStyle({required Color color,
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