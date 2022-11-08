import 'package:ogunmolawa_john/config/constants.dart';
import 'package:ogunmolawa_john/config/theme.dart';
import 'package:ogunmolawa_john/core/utils/extensions/context.dart';
import 'package:ogunmolawa_john/core/widgets/navigation_bar/nav_btn.dart';
import 'package:ogunmolawa_john/core/widgets/navigation_drawer/nav_drawer_item.dart';
import 'package:ogunmolawa_john/core/widgets/social_links/social_links.dart';
import 'package:ogunmolawa_john/generated/assets.gen.dart';
import 'package:ogunmolawa_john/core/routing/route_names.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: context.getWidth(.8),
      height: context.getHeight(.6),
      margin: EdgeInsets.symmetric(
        vertical: context.getHeight(.2),
        horizontal: Insets.xl,
      ),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Corners.mdRadius),
        color: Colors.white,
        boxShadow: [
          BoxShadow(color: Colors.black12, blurRadius: 16),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          DrawerItem(
            title: "Home",
            icon: Assets.icons.twotone.home1,
            navigationPath: homeRoute,
          ),
          DrawerItem(
            title: "About Me",
            icon: Assets.icons.twotone.user,
            navigationPath: aboutRoute,
          ),
          DrawerItem(
            title: "Gallery",
            icon: Assets.icons.twotone.statusUp,
            navigationPath: galleryRoute,
          ),
          DrawerItem(
            title: "Collection",
            icon: Assets.icons.twotone.judge,
            navigationPath: privateCollectionRoute,
          ),
          NavButton(
            action: () {},
          ),
          const SocialLinks(),
        ],
      ),
    );
  }
}
