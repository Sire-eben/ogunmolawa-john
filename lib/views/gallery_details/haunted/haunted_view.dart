import 'package:flutter/material.dart';
import 'package:ogunmolawa_john/config/theme.dart';
import 'package:ogunmolawa_john/views/gallery_details/haunted/haunted_desktop.dart';
import 'package:ogunmolawa_john/views/gallery_details/haunted/haunted_mobile.dart';
import 'package:responsive_builder/responsive_builder.dart';

class HauntedView extends StatelessWidget {
  const HauntedView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: ScreenTypeLayout(
        desktop: const HauntedViewDesktop(),
        mobile: const HauntedViewMobile(),
      ),
    );
  }
}
