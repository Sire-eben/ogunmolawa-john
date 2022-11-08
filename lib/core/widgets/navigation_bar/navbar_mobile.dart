import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ogunmolawa_john/config/theme.dart';
import 'package:ogunmolawa_john/core/utils/extensions/context.dart';
import 'package:ogunmolawa_john/core/widgets/images/local_svg_icon.dart';
import 'package:ogunmolawa_john/core/widgets/navigation_drawer/navigation_drawer.dart';
import 'package:ogunmolawa_john/generated/assets.gen.dart';
import 'package:flutter/material.dart';

import 'navbar_logo.dart';

class NavBarMobile extends StatelessWidget {
  // final GlobalKey<ScaffoldState> scaffoldKey;

  const NavBarMobile({
    super.key,
    // required this.scaffoldKey,
  });

  @override
  Widget build(BuildContext context) {
    // final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

    return AnimatedContainer(
      duration: const Duration(milliseconds: 600),
      height: 60,
      width: context.width,
      color: AppColors.white,
      alignment: Alignment.center,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const NavbarLogo(),
          IconButton(
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (context) {
                    return NavigationDrawer();
                  });
            },
            icon: Icon(
              Icons.menu,
              color: AppColors.primaryBlue,
            ),
          ),
        ],
      ),
    );
  }
}
