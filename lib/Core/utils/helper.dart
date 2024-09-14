import 'package:flutter/material.dart';

SizedBox customSizedBox(BuildContext context  ,  {double height = 0  , double  width = 0 }) {
  return  SizedBox(
    height: MediaQuery.of(context).size.height * height ,
    width: MediaQuery.of(context).size.height * width,
  );
}

// Helper method for creating the subtitle (e.g., author name)
Text customTextSubTitle(BuildContext context, {required String text}) {
  return Text(
    text,
    style: Theme.of(context)
        .textTheme
        .bodySmall, // Use the small body text style
  );
}

// Helper method for creating the title (e.g., book title, price)
Text customTextTitle(BuildContext context, {required String text}) {
  return Text(
    text,
    style: Theme.of(context)
        .textTheme
        .titleLarge, // Use the large title text style
  );
}
