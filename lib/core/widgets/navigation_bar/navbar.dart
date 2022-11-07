
import 'package:flutter/material.dart';
import 'package:ogunmolawa_john/core/widgets/navigation_bar/navbar_mobile.dart';
import 'package:ogunmolawa_john/core/widgets/navigation_bar/navbar_tablet_desktop.dart';
import 'package:responsive_builder/responsive_builder.dart';

class NavBar extends StatefulWidget {
  final GlobalKey<ScaffoldState> scaffoldKey;

  const NavBar({Key? key, required this.scaffoldKey}) : super(key: key);

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: NavBarMobile(
        scaffoldKey: widget.scaffoldKey,
      ),
      desktop: const NavBarTabletDesktop(),
    );
  }
}
