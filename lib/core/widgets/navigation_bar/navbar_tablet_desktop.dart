import 'package:ogunmolawa_john/config/theme.dart';
import 'package:ogunmolawa_john/core/routing/route_names.dart';
import 'package:flutter/material.dart';
import 'package:ogunmolawa_john/core/utils/extensions/context.dart';
import 'package:ogunmolawa_john/generated/assets.gen.dart';
import 'package:url_launcher/url_launcher_string.dart';

import 'nav_btn.dart';
import 'navbar_item.dart';
import 'navbar_logo.dart';

class NavBarTabletDesktop extends StatelessWidget {
  const NavBarTabletDesktop({super.key});
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Container(
      padding: const EdgeInsets.only(left: Insets.lg),
      height: context.getHeight(.1),
      color: Colors.white,
      width: width,
      child: Row(
        children: [
          const NavbarLogo(),
          const Expanded(
            child: SizedBox(),
          ),
          NavBarItem(
            label: "About me",
            navigationPath: aboutRoute,
            icon: Assets.icons.twotone.user,
          ),
          NavBarItem(
            label: "Gallery",
            navigationPath: galleryRoute,
            icon: Assets.icons.twotone.gallery,
          ),
          NavBarItem(
            label: "Private Collection",
            navigationPath: privateCollectionRoute,
            icon: Assets.icons.twotone.user,
          ),
          NavButton(
            action: () => launchUrlString(""),
          ),
        ],
      ),
    );
  }
}
