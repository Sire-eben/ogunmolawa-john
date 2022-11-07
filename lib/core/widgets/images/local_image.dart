import 'package:flutter/material.dart';

class LocalImage extends StatelessWidget {
  const LocalImage(
    this.image, {
    Key? key,
    this.height,
    this.width,
    this.fit = BoxFit.cover,
  }) : super(key: key);
  final String image;
  final double? height, width;
  final BoxFit fit;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      image,
      fit: fit,
      height: height,
      width: width,
    );
  }
}
