import 'package:flutter/material.dart';
import 'package:ogunmolawa_john/config/theme.dart';
import 'package:ogunmolawa_john/views/exhibition/layout/desktop.dart';
import 'package:ogunmolawa_john/views/exhibition/layout/mobile.dart';
import 'package:responsive_builder/responsive_builder.dart';

class ExhibitionView extends StatefulWidget {
  const ExhibitionView({super.key});

  @override
  State<ExhibitionView> createState() => _ExhibitionViewState();
}

class _ExhibitionViewState extends State<ExhibitionView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: SingleChildScrollView(
        child: ScreenTypeLayout(
          mobile: const ExhibitionViewMobile(),
          desktop: const ExhibitionViewDesktop(),
        ),
      ),
    );
  }
}
