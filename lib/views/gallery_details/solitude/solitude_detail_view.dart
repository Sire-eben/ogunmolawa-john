import 'package:flutter/material.dart';
import 'package:ogunmolawa_john/views/gallery_details/solitude/solitude_desktop.dart';
import 'package:ogunmolawa_john/views/gallery_details/solitude/solitude_detail_mobile.dart';
import 'package:responsive_builder/responsive_builder.dart';

class SolitudeView extends StatelessWidget {
  const SolitudeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScreenTypeLayout(
        desktop: const SolitudeViewDesktop(),
        mobile: const SolitudeViewMobile(),
      ),
    );
  }
}
