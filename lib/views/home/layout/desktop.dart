import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gap/gap.dart';
import 'package:ogunmolawa_john/config/constants.dart';
import 'package:ogunmolawa_john/config/theme.dart';
import 'package:ogunmolawa_john/core/routing/route_names.dart';
import 'package:ogunmolawa_john/core/utils/extensions/context.dart';
import 'package:ogunmolawa_john/core/utils/extensions/hover_extensions.dart';
import 'package:ogunmolawa_john/core/widgets/home/quick_links.dart';
import 'package:ogunmolawa_john/generated/assets.gen.dart';
import 'package:url_launcher/url_launcher_string.dart';

class HomeviewDesktop extends StatefulWidget {
  const HomeviewDesktop({super.key});

  @override
  State<HomeviewDesktop> createState() => _HomeviewDesktopState();
}

class _HomeviewDesktopState extends State<HomeviewDesktop> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row(
          children: [
            Expanded(
                flex: 2,
                child: Container(
                  color: AppColors.primaryColor,
                )),
            Expanded(
                flex: 4,
                child: Container(
                  color: AppColors.white,
                )),
          ],
        ),
        Center(
          child: Container(
            alignment: Alignment.center,
            constraints: BoxConstraints(
              maxHeight: context.getHeight(.7),
              maxWidth: context.getWidth(.5),
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(9),
              boxShadow: [
                BoxShadow(
                    blurRadius: 40,
                    spreadRadius: 4,
                    color: Colors.grey.shade400)
              ],
            ),
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                      child: Container(
                    color: AppColors.primaryLight,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Gap(Insets.xl),
                        CircleAvatar(
                          radius: 100,
                          backgroundColor: AppColors.white,
                          backgroundImage: AssetImage(Assets.images.one.path),
                        ),
                        const Text(
                          "OGUNMOLAWA\nJOHN",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        Container(
                          height: 4,
                          width: 100,
                          margin: const EdgeInsets.symmetric(
                            vertical: Insets.md,
                          ),
                          color: AppColors.primaryColor,
                        ),
                        const Text(
                          "FINE ARTIST",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            letterSpacing: 7,
                            fontSize: 16,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                        const Spacer(),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Container(
                            height: 50,
                            width: context.width,
                            color: Colors.white,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                IconButton(
                                  onPressed: () {
                                    launchUrlString(linkedlnUrl);
                                  },
                                  icon: const FaIcon(
                                    FontAwesomeIcons.linkedin,
                                    color: Colors.black,
                                  ),
                                ).moveUpOnHover,
                                IconButton(
                                  onPressed: () {
                                    launchUrlString(instagramUrl);
                                  },
                                  icon: const FaIcon(
                                    FontAwesomeIcons.instagram,
                                    color: Colors.black,
                                  ),
                                ).moveUpOnHover,
                                IconButton(
                                  onPressed: () {},
                                  icon: const FaIcon(
                                    FontAwesomeIcons.facebookF,
                                    color: Colors.black,
                                  ),
                                ).moveUpOnHover,
                                IconButton(
                                  onPressed: () {},
                                  icon: const FaIcon(
                                    FontAwesomeIcons.twitter,
                                    color: Colors.black,
                                  ),
                                ).moveUpOnHover,
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  )),
                  Expanded(
                      child: Container(
                    padding: const EdgeInsets.all(Insets.md),
                    color: AppColors.white,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Hey there!",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        const Text(
                          "I perceive my art as a response to society and a way to inspire one "
                          "or two people to re-evaluate their socio-political structures and spread positivity despite the challenges faced.",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        const Gap(Insets.lg),
                        Container(
                          padding: const EdgeInsets.all(Insets.md),
                          child: Column(
                            children: [
                              QuickLinks(
                                icon: Assets.icons.twotone.profile,
                                text: 'About me',
                                navigationPath: aboutRoute,
                              ),
                              QuickLinks(
                                icon: Assets.icons.twotone.galleryEdit,
                                text: 'My gallery',
                                navigationPath: galleryRoute,
                              ),
                              QuickLinks(
                                icon: Assets.icons.twotone.grid8,
                                text: 'Private Collections',
                                navigationPath: privateCollectionRoute,
                              ),
                              QuickLinks(
                                icon: Assets.icons.twotone.callAdd,
                                text: 'Contact me',
                                navigationPath: contactRoute,
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  )),
                ],
              ),
            ),
          ).moveCardsUpOnHover,
        ),
      ],
    );
  }
}
