import 'package:ogunmolawa_john/core/widgets/images/local_svg_icon.dart';
import 'package:ogunmolawa_john/generated/assets.gen.dart';
import 'package:flutter/material.dart';

import 'navbar_logo.dart';

class NavBarMobile extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey;

  const NavBarMobile({super.key, required this.scaffoldKey});

  @override
  Widget build(BuildContext context) {
    // final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

    return Container(
      height: 60,
      alignment: Alignment.center,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const NavbarLogo(),
          IconButton(
            onPressed: () {
              scaffoldKey.currentState!.openDrawer();
            },
            icon: LocalSvgIcon(Assets.icons.twotone.menu),
          ),
        ],
      ),
    );
  }
}
