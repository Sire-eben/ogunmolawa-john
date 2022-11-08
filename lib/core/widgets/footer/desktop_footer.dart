import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ogunmolawa_john/config/constants.dart';
import 'package:ogunmolawa_john/config/theme.dart';
import 'package:ogunmolawa_john/core/utils/extensions/context.dart';
import 'package:ogunmolawa_john/core/utils/extensions/hover_extensions.dart';
import 'package:ogunmolawa_john/core/widgets/social_links/social_links.dart';
import 'package:url_launcher/url_launcher_string.dart';

class DesktopFooter extends StatelessWidget {
  const DesktopFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(Insets.lg),
      height: context.getHeight(.175),
      width: context.width,
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: Row(
        children: [
          Expanded(
              flex: 3,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text('© 2023 Ogunmola John.'),
                  // Text('Proudly created by sire.eben'),
                ],
              )),
          Expanded(
              flex: 2,
              child: Column(
                children: const [
                  Text('Call'),
                  Text('+234 802 201 5752'),
                ],
              )),
          Expanded(
              flex: 2,
              child: Column(
                children: const [
                  Text('Write'),
                  Text('john@ogunmolawajohn.com'),
                ],
              )),
          Expanded(
              flex: 2,
              child: Column(
                children: const [
                  Text('Follow'),
                  SocialLinks(),
                ],
              )),
        ],
      ),
    );
  }
}
