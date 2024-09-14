// ignore_for_file: unused_element
import 'package:flutter/material.dart';

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
