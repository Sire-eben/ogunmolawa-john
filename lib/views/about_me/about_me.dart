import 'package:flutter/material.dart';
import 'package:ogunmolawa_john/views/about_me/layout/desktop.dart';
import 'package:ogunmolawa_john/views/about_me/layout/mobile.dart';
import 'package:responsive_builder/responsive_builder.dart';

class AboutMeView extends StatefulWidget {
  const AboutMeView({super.key});

  @override
  State<AboutMeView> createState() => _AboutMeViewState();
}

class _AboutMeViewState extends State<AboutMeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScreenTypeLayout(
        mobile: const AboutMeViewMobile(),
        desktop: const AboutMeViewDesktop(),
      ),
    );
  }
}
