import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ogunmolawa_john/config/theme.dart';
import 'package:ogunmolawa_john/core/utils/extensions/context.dart';
import 'package:ogunmolawa_john/core/widgets/exhibition/exhibition_card.dart';
import 'package:ogunmolawa_john/core/widgets/footer/footer.dart';
import 'package:ogunmolawa_john/core/widgets/navigation_bar/navbar_tablet_desktop.dart';

class ExhibitionViewDesktop extends StatefulWidget {
  const ExhibitionViewDesktop({super.key});

  @override
  State<ExhibitionViewDesktop> createState() => _ExhibitionViewDesktopState();
}

class _ExhibitionViewDesktopState extends State<ExhibitionViewDesktop> {
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
                        "Exhibitions",
                        style: TextStyle(
                          fontSize: 23,
                          fontWeight: FontWeight.w700,
                        ),
                      )
                    ],
                  ),
                ),
                const ExhibitionCard(
                  text:
                      "Participated in the Made in Nigeria Art masterclass painting and photography exhibition“ job, Migration and integration held at Discovery Museum Abuja, Nigeria",
                ),
                const ExhibitionCard(
                  text:
                      "“Haunted and liberation” Exhibition at Art number 23 gallery, Athens. Greece",
                ),
                const ExhibitionCard(
                  text:
                      "African Art Exhibition at Labela Africa Queretaro Mexico",
                ),
                // Gap(context.getHeight(.15)),
                // Padding(
                //   padding: const EdgeInsets.all(Insets.lg),
                //   child: Row(
                //     mainAxisAlignment: MainAxisAlignment.center,
                //     crossAxisAlignment: CrossAxisAlignment.center,
                //     children: [
                //       Container(
                //         height: 40,
                //         width: 40,
                //         color: AppColors.primaryBlue,
                //       ),
                //       const Gap(Insets.md),
                //       const Text(
                //         "Collections",
                //         style: TextStyle(
                //           fontSize: 23,
                //           fontWeight: FontWeight.w700,
                //         ),
                //       )
                //     ],
                //   ),
                // ),
                // ExhibitionCard(
                //   text: "LaBellaAfrica,",
                //   // width: 0,
                // ),
                // ExhibitionCard(text: "Queretaro,"),
                // ExhibitionCard(text: "Mexico PortlandOregon,"),
                const Gap(Insets.xl * 8),
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
