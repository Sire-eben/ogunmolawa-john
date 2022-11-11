import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ogunmolawa_john/config/theme.dart';
import 'package:ogunmolawa_john/generated/assets.gen.dart';
import '../images/local_svg_icon.dart';

class CallToActionMobile extends StatelessWidget {
  final String text;
  final VoidCallback action;
  final Color? color;

  const CallToActionMobile({
    Key? key,
    required this.text,
    this.color,
    required this.action,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      width: MediaQuery.of(context).size.width,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.all(Insets.md),
              backgroundColor: color ?? AppColors.primaryBlue,
              elevation: 10,
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Corners.xsRadius))),
          onPressed: action,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                text,
                style: const TextStyle(
                  fontSize: FontSizes.md,
                  color: Colors.white,
                  fontWeight: FontWeight.w300,
                ),
              ),
              const Gap(Insets.lg),
              LocalSvgIcon(
                Assets.icons.twotone.arrowCircleRight,
                color: Colors.white,
              ),
            ],
          )),
    );
  }
}
