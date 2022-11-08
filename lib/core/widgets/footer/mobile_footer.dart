import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gap/gap.dart';
import 'package:ogunmolawa_john/config/constants.dart';
import 'package:ogunmolawa_john/config/theme.dart';
import 'package:ogunmolawa_john/core/utils/extensions/context.dart';
import 'package:ogunmolawa_john/core/utils/extensions/hover_extensions.dart';
import 'package:url_launcher/url_launcher_string.dart';

class MobileFooter extends StatelessWidget {
  const MobileFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
          horizontal: Insets.lg, vertical: Insets.xl),
      // height: context.getHeight(.175),
      width: context.width,
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'Call',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text('+234 802 201 5752'),
                ],
              )),
              Expanded(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'Write',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text('john@ogunmolawajohn.com'),
                ],
              )),
            ],
          ),
          const Gap(Insets.md),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Follow',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: () {
                      launchUrlString(linkedlnUrl);
                    },
                    icon: const FaIcon(
                      FontAwesomeIcons.linkedin,
                      color: Colors.black,
                      size: 16,
                    ),
                  ).moveUpOnHover,
                  IconButton(
                    onPressed: () {
                      launchUrlString(instagramUrl);
                    },
                    icon: const FaIcon(
                      FontAwesomeIcons.instagram,
                      color: Colors.black,
                      size: 16,
                    ),
                  ).moveUpOnHover,
                  IconButton(
                    onPressed: () {},
                    icon: const FaIcon(
                      FontAwesomeIcons.facebookF,
                      color: Colors.black,
                      size: 16,
                    ),
                  ).moveUpOnHover,
                  IconButton(
                    onPressed: () {},
                    icon: const FaIcon(
                      FontAwesomeIcons.twitter,
                      color: Colors.black,
                      size: 16,
                    ),
                  ).moveUpOnHover,
                ],
              ),
            ],
          ),
          const Gap(Insets.lg),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text('© 2023 Ogunmola John.'),
              // Text('Proudly created by sire.eben'),
            ],
          ),
        ],
      ),
    );
  }
}
