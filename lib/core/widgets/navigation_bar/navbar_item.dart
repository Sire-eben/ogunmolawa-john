import 'package:ogunmolawa_john/config/theme.dart';
import 'package:ogunmolawa_john/locator.dart';
import 'package:ogunmolawa_john/core/services/navigation_service.dart';
import 'package:flutter/material.dart';
import 'package:ogunmolawa_john/core/utils/extensions/hover_extensions.dart';

class NavBarItem extends StatelessWidget {
  final String label;
  final String navigationPath;
  final String icon;

  const NavBarItem({
    super.key,
    required this.label,
    required this.navigationPath,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: Insets.lg),
      child: InkWell(
        onTap: () {
          locator<NavigationService>().navigateTo(navigationPath);
        },
        child: Column(
          children: [
            Text(
              label,
              style: const TextStyle(
                color: AppColors.primaryDark,
                fontSize: FontSizes.md,
                fontWeight: FontWeight.w600,
              ),
            ),
            // const Spacer(),
            // Container(
            //   width: 150,
            //   height: 3,
            //   color: AppColors.primaryColor,
            // )
          ],
        ),
      ).showCursorOnHover.moveUpOnHover,
    );
  }
}
