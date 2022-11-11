import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ogunmolawa_john/config/theme.dart';
import 'package:ogunmolawa_john/core/utils/extensions/context.dart';
import 'package:ogunmolawa_john/core/utils/extensions/hover_extensions.dart';
import 'package:ogunmolawa_john/core/widgets/call_to_action/call_to_action.dart';
import 'package:ogunmolawa_john/core/widgets/footer/footer.dart';
import 'package:ogunmolawa_john/core/widgets/navigation_bar/navbar.dart';
import 'package:ogunmolawa_john/core/widgets/navigation_bar/navbar_tablet_desktop.dart';

class DetailPreviewWidgetMobile extends StatelessWidget {
  final String title, price, story, size, medium, image;

  const DetailPreviewWidgetMobile(
      {super.key,
      required this.title,
      required this.price,
      required this.story,
      required this.size,
      required this.image,
      required this.medium});

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
                  padding: const EdgeInsets.symmetric(horizontal: Insets.lg),
                  child: Column(
                    children: [
                      InkWell(
                        onTap: () {
                          showDialog(
                              context: context,
                              builder: (context) {
                                return Container(
                                  constraints: BoxConstraints(
                                    maxHeight: context.getHeight(.8),
                                  ),
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage(image),
                                    ),
                                  ),
                                  child: Column(
                                    children: [
                                      Gap(Insets.xl * 1.5),
                                      Align(
                                        alignment: Alignment.centerLeft,
                                        child: GestureDetector(
                                          onTap: () {
                                            Navigator.maybePop(context);
                                          },
                                          child: Container(
                                            height: 30,
                                            width: 30,
                                            decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: AppColors.primaryBlue),
                                            child: const Icon(
                                              Icons.close,
                                              color: Colors.white,
                                            ),
                                            // color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                );
                              });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              boxShadow: const [
                                BoxShadow(
                                  spreadRadius: 1,
                                  blurRadius: 2,
                                  color: AppColors.primaryDark,
                                )
                              ],
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(
                                  image,
                                ),
                              )),
                          child: Image.asset(
                            image,
                            fit: BoxFit.cover,
                          ),
                        ).moveCardsUpOnHover,
                      ),
                      const Gap(Insets.xl),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                height: 22,
                                width: 10,
                                color: AppColors.primaryBlue,
                              ),
                              const Gap(Insets.md),
                              Text(
                                title,
                                style: const TextStyle(
                                  fontSize: 23,
                                  fontWeight: FontWeight.w700,
                                ),
                              )
                            ],
                          ),
                          const Gap(Insets.lg),
                          const Divider(),
                          const Gap(Insets.sm),
                          const Text(
                            'Story',
                            style: TextStyle(
                                color: AppColors.primaryBlue,
                                fontSize: 18,
                                fontWeight: FontWeight.w200),
                          ),
                          Text(
                            story,
                            style: const TextStyle(
                                color: AppColors.primaryDark,
                                fontSize: 12,
                                fontWeight: FontWeight.w400),
                          ),
                          const Gap(Insets.lg),
                          const Text(
                            'Medium',
                            style: TextStyle(
                                color: AppColors.primaryBlue,
                                fontSize: 18,
                                fontWeight: FontWeight.w200),
                          ),
                          Text(
                            medium,
                            style: const TextStyle(
                                color: AppColors.primaryDark,
                                fontSize: 12,
                                fontWeight: FontWeight.w400),
                          ),
                          const Gap(Insets.lg),
                          const Text(
                            'Size',
                            style: TextStyle(
                                color: AppColors.primaryBlue,
                                fontSize: 18,
                                fontWeight: FontWeight.w200),
                          ),
                          Text(
                            size,
                            style: const TextStyle(
                                color: AppColors.primaryDark,
                                fontSize: 12,
                                fontWeight: FontWeight.w400),
                          ),
                          const Divider(),
                          const Gap(Insets.lg),
                          Text(
                            '\$$price',
                            style: const TextStyle(
                                color: AppColors.primaryDark,
                                fontSize: 22,
                                fontWeight: FontWeight.w600),
                          ),
                          const Gap(Insets.lg),
                          CallToAction(
                            title: 'Place Order',
                            color: AppColors.primaryDark,
                            action: () {},
                          )
                        ],
                      ),
                    ],
                  ),
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
