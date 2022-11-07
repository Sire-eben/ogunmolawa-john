import 'package:flutter/material.dart';
import 'package:ogunmolawa_john/core/utils/extensions/context.dart';
import 'package:responsive_builder/responsive_builder.dart';

class CenteredView extends StatelessWidget {
  final Widget child;

  const CenteredView({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: (context, sizing) {
      return Center(
        child: Container(
          width: context.width,
          // padding: sizing.deviceScreenType == DeviceScreenType.desktop
          //     ? const EdgeInsets.fromLTRB(30, 20, 30, 0)
          //     : const EdgeInsets.fromLTRB(30, 10, 30, 0),
          alignment: Alignment.bottomCenter,
          constraints: const BoxConstraints(maxWidth: 1400),
          child: child,
        ),
      );
    });
  }
}
