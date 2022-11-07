import 'package:flutter/material.dart';
import 'package:ogunmolawa_john/views/home/layout/desktop.dart';
import 'package:ogunmolawa_john/views/home/layout/mobile.dart';
import 'package:responsive_builder/responsive_builder.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: const HomeviewMobile(),
      desktop: const HomeviewDesktop(),
    );
  }
}
