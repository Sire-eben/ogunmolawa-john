import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ogunmolawa_john/config/theme.dart';
import 'package:ogunmolawa_john/core/utils/extensions/context.dart';
import 'package:ogunmolawa_john/core/utils/extensions/hover_extensions.dart';

class GalleryCardsMobile extends StatelessWidget {
  final String title;
  final String imagePath;
  final String description;
  final String subtitle;

  const GalleryCardsMobile(
      {super.key,
      required this.title,
      required this.subtitle,
      required this.imagePath,
      required this.description});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.width,
      // height: 400,
      padding: const EdgeInsets.all(1),
      margin: const EdgeInsets.only(
        top: Insets.xl * 2,
        left: Insets.lg,
        right: Insets.lg,
      ),
      decoration: BoxDecoration(
        // borderRadius: BorderRadius.circular(12),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
              blurRadius: 40, spreadRadius: 4, color: Colors.grey.shade400)
        ],
      ),
      child: Column(
        children: [
          const Gap(Insets.xl),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 10,
                height: 35,
                color: AppColors.primaryBlue,
              ),
              const Gap(Insets.lg),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                        color: AppColors.primaryBlue,
                        fontSize: 20,
                        fontWeight: FontWeight.w700),
                  ),
                  // const Gap(Insets.sm / 2),
                  Text(
                    subtitle,
                    style: const TextStyle(
                        color: AppColors.primaryDark,
                        fontSize: 12,
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
                vertical: Insets.md, horizontal: Insets.xl),
            child: Text(
              description,
              style: const TextStyle(
                  color: AppColors.primaryDark,
                  fontSize: 14,
                  fontWeight: FontWeight.normal),
            ),
          ),
          Image.asset(
            imagePath,
            fit: BoxFit.cover,
          ),
        ],
      ),
    ).moveCardsUpOnHover;
  }
}
