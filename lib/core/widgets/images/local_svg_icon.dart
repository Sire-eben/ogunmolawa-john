import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ogunmolawa_john/config/theme.dart';

class LocalSvgIcon extends StatelessWidget {
  const LocalSvgIcon(
    this.icon, {
    this.fit = BoxFit.contain,
    this.size = IconSizes.sm,
    this.color,
    Key? key,
  }) : super(key: key);
  final String icon;
  final BoxFit fit;
  final double? size;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size,
      width: size,
      child: Center(
        child: SvgPicture.asset(
          icon,
          height: size ?? IconSizes.sm,
          width: size ?? IconSizes.sm,
          fit: fit,
          color: color ?? Theme.of(context).primaryColor,
        ),
      ),
    );
  }
}
