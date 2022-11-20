import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ogunmolawa_john/config/theme.dart';
import 'package:ogunmolawa_john/core/routing/route_names.dart';
import 'package:ogunmolawa_john/core/utils/extensions/context.dart';
import 'package:ogunmolawa_john/core/utils/extensions/hover_extensions.dart';
import 'package:ogunmolawa_john/core/widgets/home/quick_links.dart';
import 'package:ogunmolawa_john/generated/assets.gen.dart';

class HomeviewMobile extends StatefulWidget {
  const HomeviewMobile({super.key});

  @override
  State<HomeviewMobile> createState() => _HomeviewMobileState();
}

class _HomeviewMobileState extends State<HomeviewMobile> {
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
                flex: 3,
                child: Container(
                  color: AppColors.white,
                )),
          ],
        ),
        Center(
          child: Container(
            alignment: Alignment.center,
            constraints: BoxConstraints(
              // maxHeight: context.getHeight(.9),
              maxWidth: context.getWidth(.9),
            ),
            margin: const EdgeInsets.symmetric(vertical: Insets.xl),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(9),
              boxShadow: [
                BoxShadow(
                  blurRadius: 60,
                  spreadRadius: 3,
                  color: Colors.grey.shade400,
                )
              ],
            ),
            child: Center(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: context.width,
                      height: 300,
                      color: AppColors.primaryLight,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          // const Gap(Insets.xl),
                          CircleAvatar(
                            radius: 80,
                            backgroundColor: AppColors.white,
                            backgroundImage: AssetImage(Assets.images.one.path),
                          ),
                          const Gap(Insets.sm),
                          const Text(
                            "OGUNMOLAWA\nJOHN",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          const Text(
                            "ARTIST",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              letterSpacing: 7,
                              fontSize: 12,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(Insets.md),
                      width: context.width,
                      color: AppColors.white,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            padding: const EdgeInsets.all(Insets.md),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
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
                                  ],
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
                    ),
                  ],
                ),
              ),
            ),
          ).moveCardsUpOnHover,
        ),
      ],
    );
  }
}
