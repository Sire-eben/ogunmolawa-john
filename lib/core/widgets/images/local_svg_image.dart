import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LocalSvgImage extends StatelessWidget {
  const LocalSvgImage(this.image,
      {Key? key, this.height, this.width, this.fit = BoxFit.contain})
      : super(key: key);
  final String image;
  final double? height, width;
  final BoxFit fit;

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      image,
      fit: fit,
      height: height,
      width: width,
    );
  }
}
