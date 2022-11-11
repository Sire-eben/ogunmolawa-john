import 'package:flutter/material.dart';
import 'package:ogunmolawa_john/views/gallery_details/pearl_two/pearl_two_desktop.dart';
import 'package:ogunmolawa_john/views/gallery_details/pearl_two/pearl_two_detail_mobile.dart';
import 'package:responsive_builder/responsive_builder.dart';

class BlackPearlTwoView extends StatelessWidget {
  const BlackPearlTwoView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScreenTypeLayout(
        desktop: const BlackPearlTwoViewDesktop(),
        mobile: const BlackPearlTwoViewMobile(),
      ),
    );
  }
}
