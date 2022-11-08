import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ogunmolawa_john/config/theme.dart';
import 'package:ogunmolawa_john/core/utils/extensions/context.dart';
import 'package:ogunmolawa_john/core/widgets/navigation_bar/navbar_tablet_desktop.dart';
import 'package:ogunmolawa_john/core/widgets/private_collection/collection_card_desktop.dart';
import 'package:ogunmolawa_john/generated/assets.gen.dart';

import '../../../core/widgets/footer/footer.dart';

class PrivateCollectionDesktop extends StatefulWidget {
  const PrivateCollectionDesktop({super.key});

  @override
  State<PrivateCollectionDesktop> createState() =>
      _PrivateCollectionDesktopState();
}

class _PrivateCollectionDesktopState extends State<PrivateCollectionDesktop> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: context.height,
          width: context.width,
          color: AppColors.primaryColor,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Gap(context.getHeight(.15)),
                Padding(
                  padding: const EdgeInsets.all(Insets.lg),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: 40,
                        width: 40,
                        color: AppColors.primaryBlue,
                      ),
                      const Gap(Insets.md),
                      const Text(
                        "Private Collection",
                        style: TextStyle(
                          fontSize: 23,
                          fontWeight: FontWeight.w700,
                        ),
                      )
                    ],
                  ),
                ),
                ConstrainedBox(
                  constraints: BoxConstraints(maxWidth: context.getWidth(.5)),
                  child: const Text(
                    "Although a graduate of Civil Engineering at University Of Abuja, "
                    "my passion for art is as strong as ever and I’m currently practicing art Full-time. "
                    "My ultimate goal is to create artworks that have an emotional and social effect on the viewer, "
                    "rendering not just the subject or object but what it has been through and Inspired by his "
                    "personal experience living in Nigeria",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 13),
                  ),
                ),
                PrivateCollectionCardDesktop(
                  title: "ALICE",
                  subtitle: "2022",
                  dimension: "20 x 24 inches",
                  imagePath: Assets.work.collectionOne.path,
                ),
                PrivateCollectionCardDesktop(
                  title: "DAVID",
                  subtitle: "2022",
                  dimension: "20 x 24 inches",
                  imagePath: Assets.work.collectionTwo.path,
                ),
                PrivateCollectionCardDesktop(
                  title: "NELSON MANDELA",
                  subtitle: "2021",
                  dimension: "20 x 24 inches",
                  imagePath: Assets.work.collectionThree.path,
                ),
                PrivateCollectionCardDesktop(
                  title: "C. ODUMEGU OJUKWU",
                  subtitle: "2021",
                  dimension: "16 x 20 inches",
                  imagePath: Assets.work.collectionFour.path,
                ),
                PrivateCollectionCardDesktop(
                  title: "FELA",
                  subtitle: "2021",
                  dimension: "16 x 20 inches",
                  imagePath: Assets.work.collectionSeven.path,
                ),
                const Gap(Insets.xl * 1.5),
                const Footer(),
              ],
            ),
          ),
        ),
        const Positioned(
          top: 0,
          child: NavBarTabletDesktop(),
        ),
      ],
    );
  }
}
