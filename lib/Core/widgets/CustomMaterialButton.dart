import 'package:flutter/material.dart';

import '../theme/books_theme.dart';

class CustomMaterialButton extends StatelessWidget {
  const CustomMaterialButton({
    super.key,
    this.textColor = Colors.white,
    required this.backgroundColor,
    required this.text,
    this.topLeft = 0,
    this.bottomLeft = 0,
    this.topRight = 0,
    this.bottomRight = 0,
    this.fontSize,
  });

  final Color textColor;
  final Color backgroundColor;
  final String text;
  final double topLeft;
  final double bottomLeft;
  final double topRight;
  final double bottomRight;
  final double? fontSize;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      height: 40,
      color: backgroundColor,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(topLeft),
            bottomLeft: Radius.circular(bottomLeft),
            topRight: Radius.circular(topRight),
            bottomRight: Radius.circular(bottomRight),
          )),
      onPressed: () {},
      child: Text(
        text,
        style:
        BooksStyles.textStyle18Medium(context).copyWith(color: textColor , fontSize: fontSize),
      ),
    );
  }
}
