// ignore_for_file: file_names

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../../../Core/widgets/custom_circular_indicator.dart';

class CustomImage extends StatelessWidget {
  const CustomImage({
    super.key,
    required this.imageUrl,
    this.aspectRatio = 2.5 / 4,
    this.height,
  });
  final String imageUrl;
  final double aspectRatio;
  final double? height;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: SizedBox(
        height: height,
        child: AspectRatio(
          aspectRatio: aspectRatio,
          child: CachedNetworkImage(imageUrl: 'imageUrl' , fit: BoxFit.fill,
          errorWidget: (context, url, error)=> const CustomCircularIndicator() ,
          ),
        ),
      ),
    );
  }
}
