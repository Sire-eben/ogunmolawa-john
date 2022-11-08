import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ogunmolawa_john/config/theme.dart';
import 'package:ogunmolawa_john/core/widgets/images/local_svg_icon.dart';
import 'package:ogunmolawa_john/generated/assets.gen.dart';

class CallToActionTabletDesktop extends StatelessWidget {
  final String text;
  final VoidCallback action;

  const CallToActionTabletDesktop({
    Key? key,
    required this.text,
    required this.action,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(maxWidth: 200),
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.all(Insets.md),
              backgroundColor: AppColors.primaryBlue,
              elevation: 10,
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Corners.xsRadius))),
          onPressed: action,
          child: Row(
            mainAxisSize: MainAxisSize.min,
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
              const Gap(Insets.md),
              LocalSvgIcon(
                Assets.icons.twotone.arrowCircleRight,
                color: Colors.white,
              ),
            ],
          )),
    );
  }
}
