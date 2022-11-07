import 'package:flutter/material.dart';
import 'package:ogunmolawa_john/core/utils/extensions/hover_extensions.dart';

import 'package:responsive_builder/responsive_builder.dart';

import 'call_to_action_mobile.dart';
import 'call_to_action_tablet_desktop.dart';

class CallToAction extends StatelessWidget {
  final String title;
  final VoidCallback action;

  const CallToAction({super.key, required this.title, required this.action});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: CallToActionMobile(
        text: title,
        action: action,
      ),
      desktop: CallToActionTabletDesktop(
        text: title,
        action: action,
      ),
    ).showCursorOnHover;
  }
}
