import 'package:flutter/material.dart';
import 'package:ogunmolawa_john/core/widgets/footer/desktop_footer.dart';
import 'package:ogunmolawa_john/core/widgets/footer/mobile_footer.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: const MobileFooter(),
      desktop: const DesktopFooter(),
    );
  }
}
