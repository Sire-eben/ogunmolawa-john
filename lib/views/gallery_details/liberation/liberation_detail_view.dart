import 'package:flutter/material.dart';
import 'package:ogunmolawa_john/views/gallery_details/liberation/liberation_desktop.dart';
import 'package:ogunmolawa_john/views/gallery_details/liberation/liberation_detail_mobile.dart';
import 'package:responsive_builder/responsive_builder.dart';

class LiberationView extends StatelessWidget {
  const LiberationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScreenTypeLayout(
        desktop: const LiberationViewDesktop(),
        mobile: const LiberationViewMobile(),
      ),
    );
  }
}
