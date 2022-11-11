import 'package:flutter/material.dart';
import 'package:ogunmolawa_john/views/gallery_details/pearl_one/pearl_one_desktop.dart';
import 'package:ogunmolawa_john/views/gallery_details/pearl_one/pearl_one_detail_mobile.dart';
import 'package:responsive_builder/responsive_builder.dart';

class BlackPearlOneView extends StatelessWidget {
  const BlackPearlOneView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScreenTypeLayout(
        desktop: const BlackPearlOneViewDesktop(),
        mobile: const BlackPearlOneViewMobile(),
      ),
    );
  }
}
