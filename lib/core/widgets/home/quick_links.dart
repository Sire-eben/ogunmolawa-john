import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ogunmolawa_john/config/theme.dart';
import 'package:ogunmolawa_john/core/services/navigation_service.dart';
import 'package:ogunmolawa_john/core/utils/extensions/hover_extensions.dart';
import 'package:ogunmolawa_john/core/widgets/images/local_svg_icon.dart';
import 'package:ogunmolawa_john/locator.dart';

class QuickLinks extends StatelessWidget {
  final String text, icon;
  final String navigationPath;

  const QuickLinks({
    Key? key,
    required this.text,
    required this.icon,
    required this.navigationPath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        locator<NavigationService>().navigateTo(navigationPath);
      },
      child: Container(
        margin: const EdgeInsets.only(bottom: Insets.md),
        decoration: BoxDecoration(
          color: AppColors.primaryColor,
          borderRadius: BorderRadius.circular(6),
        ),
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            LocalSvgIcon(
              icon,
              color: AppColors.backgroundDark,
            ),
            const Gap(Insets.sm),
            Text(
              text,
              style: const TextStyle(
                // decoration: TextDecoration.underline,
                color: AppColors.backgroundDark,
              ),
            )
          ],
        ),
      ).showCursorOnHover.moveUpOnHover,
    );
  }
}
