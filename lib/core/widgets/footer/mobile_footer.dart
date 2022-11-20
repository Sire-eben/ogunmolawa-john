import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ogunmolawa_john/config/constants.dart';
import 'package:ogunmolawa_john/config/theme.dart';
import 'package:ogunmolawa_john/core/utils/extensions/context.dart';
import 'package:ogunmolawa_john/core/widgets/social_links/social_links.dart';

class MobileFooter extends StatelessWidget {
  const MobileFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
          horizontal: Insets.lg, vertical: Insets.xl),
      height: context.getHeight(.45),
      width: context.width,
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
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
                  Text(whatsappNumber),
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
                  Text(emailAddress),
                ],
              )),
            ],
          ),
          const Gap(Insets.md),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'Follow',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SocialLinks(),
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
