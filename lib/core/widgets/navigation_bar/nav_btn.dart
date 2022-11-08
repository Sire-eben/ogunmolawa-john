import 'package:ogunmolawa_john/config/theme.dart';
import 'package:ogunmolawa_john/core/routing/route_names.dart';
import 'package:ogunmolawa_john/core/services/navigation_service.dart';
import 'package:ogunmolawa_john/core/utils/extensions/hover_extensions.dart';
import 'package:flutter/material.dart';
import 'package:ogunmolawa_john/locator.dart';

class NavButton extends StatelessWidget {
  final String? text;
  final Color? backgroundColor, textColor;
  final VoidCallback? action;

  const NavButton({
    Key? key,
    this.text,
    this.action,
    this.backgroundColor,
    this.textColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => locator<NavigationService>().navigateTo(contactRoute),
      child: Container(
          width: 100,
          height: 40,
          alignment: Alignment.center,
          // margin: const EdgeInsets.only(right: Insets.lg * 2),
          decoration: BoxDecoration(
            color: backgroundColor ?? AppColors.primaryBlue,
            borderRadius: const BorderRadius.all(Corners.smRadius),
          ),
          child: Text(
            text ?? "Contact me",
            style: TextStyle(
              color: textColor ?? AppColors.backgroundLight,
              fontSize: FontSizes.sm,
            ),
          )).showCursorOnHover.moveUpOnHover,
    );
  }
}
