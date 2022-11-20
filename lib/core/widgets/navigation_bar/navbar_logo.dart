import 'package:ogunmolawa_john/core/utils/extensions/hover_extensions.dart';
import 'package:ogunmolawa_john/generated/assets.gen.dart';
import 'package:ogunmolawa_john/locator.dart';
import 'package:ogunmolawa_john/core/routing/route_names.dart';
import 'package:ogunmolawa_john/core/services/navigation_service.dart';
import 'package:flutter/material.dart';

class NavbarLogo extends StatelessWidget {
  const NavbarLogo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        locator<NavigationService>().navigateTo(homeRoute);
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(
              height: 32,
              image: AssetImage(
                Assets.icons.logo.path,
              )),
          // const Gap(Insets.md),
          // const Text(
          //   'Ogunmolawa John',
          //   style: TextStyle(fontWeight: FontWeight.w800, fontSize: 22),
          // ),
        ],
      ).showCursorOnHover,
    );
  }
}
