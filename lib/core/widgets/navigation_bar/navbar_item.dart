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
        child: Text(
          label,
          style: const TextStyle(
            color: AppColors.backgroundDark,
            fontSize: FontSizes.sm,
            fontWeight: FontWeight.w500,
          ),
        ),
      ).showCursorOnHover.moveUpOnHover,
    );
  }
}
