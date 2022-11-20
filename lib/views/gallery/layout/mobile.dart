import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ogunmolawa_john/config/theme.dart';
import 'package:ogunmolawa_john/core/routing/route_names.dart';
import 'package:ogunmolawa_john/core/utils/extensions/context.dart';
import 'package:ogunmolawa_john/core/widgets/gallery/card/gallery_card_mobile.dart';
import 'package:ogunmolawa_john/core/widgets/navigation_bar/navbar.dart';
import 'package:ogunmolawa_john/generated/assets.gen.dart';

import '../../../core/widgets/footer/footer.dart';

class GalleryViewMobile extends StatefulWidget {
  const GalleryViewMobile({super.key});

  @override
  State<GalleryViewMobile> createState() => _GalleryViewMobileState();
}

class _GalleryViewMobileState extends State<GalleryViewMobile> {
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
                        height: 20,
                        width: 20,
                        color: AppColors.primaryBlue,
                      ),
                      const Gap(Insets.md),
                      const Text(
                        "Projects",
                        style: TextStyle(
                          fontSize: 23,
                          fontWeight: FontWeight.w700,
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: Insets.lg),
                  constraints: BoxConstraints(maxWidth: context.width),
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
                GalleryCardsMobile(
                  title: "HAUNTED",
                  subtitle: "Charcoal and Graphite On Paper",
                  description:
                      "‘Haunted by thoughts of a system that compels us to bear the brunt of their poor political decisions and systemic oppression’",
                  imagePath: Assets.gallery.one.path,
                  routeName: hauntedRoute,
                ),
                GalleryCardsMobile(
                  title: "LIBERATION",
                  subtitle: "Charcoal and Graphite On Paper",
                  description:
                      "Don't let the bonds of fear and doubt keep you from attempting the impossible."
                      "Confront your discomfort and fear to see. Reach beyond and break Free. Don't limit yourself, be Liberated",
                  imagePath: Assets.gallery.two.path,
                  routeName: liberationRoute,
                ),
                GalleryCardsMobile(
                  title: "BLACK PEARL #1 2021",
                  subtitle: "Charcoal and Graphite On Paper",
                  description:
                      "Pearl is known to be a hard Precious stone and  it takes extremely rare conditions to form pearls that have that dark, eerily iridescent glow. So In this Potrait I’m likened  the black Pearl to the beauty and strong nature of African women and how women in general are taking up positions in the society and setting standards "
                      "The lingering gaze of my muse alludes to my subject remaining defiant and courageous despite discrimination, odds stacked against them  and unconscious bias in the society.",
                  imagePath: Assets.gallery.three.path,
                  routeName: pearl1Route,
                ),
                GalleryCardsMobile(
                  title: "BLACK PEARL #2 2022",
                  subtitle: "Charcoal and Graphite On Paper",
                  description:
                      "Pearl is known to be a hard Precious stone and  it takes extremely rare conditions to form pearls that have that dark, eerily iridescent glow. So In this Potrait I’m likened  the black Pearl to the beauty and strong nature of African women and how women in general are taking up positions in the society and setting standards "
                      "The lingering gaze of my muse alludes to my subject remaining defiant and courageous despite discrimination, odds stacked against them  and unconscious bias in the society.",
                  imagePath: Assets.gallery.four.path,
                  routeName: pearl2Route,
                ),
                GalleryCardsMobile(
                  title: "solitude",
                  subtitle: "Charcoal and Graphite On Paper",
                  description:
                      "This piece was drawn during the heavy lockdowns of 2020. I was often alone throughout the whole period, during this period I was able to understand a whole Lot of things that I got so immersed in my own company, I got to understand Solitude is richness in self, Independence and a path unto self discovery, “Sometimes everyone around you won’t see your vision but it’s up to you to believe in yourself\"",
                  imagePath: Assets.gallery.five.path,
                  routeName: solitudeRoute,
                ),
                const Gap(Insets.xl * 1.5),
                const Footer(),
              ],
            ),
          ),
        ),
        const Positioned(
          top: 0,
          child: NavBar(),
        ),
      ],
    );
  }
}
