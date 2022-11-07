import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ogunmolawa_john/config/theme.dart';
import 'package:ogunmolawa_john/core/routing/route_names.dart';
import 'package:ogunmolawa_john/core/services/navigation_service.dart';
import 'package:ogunmolawa_john/core/utils/extensions/context.dart';
import 'package:ogunmolawa_john/core/widgets/call_to_action/call_to_action.dart';
import 'package:ogunmolawa_john/locator.dart';

class PageNotFound extends StatelessWidget {
  const PageNotFound({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundLight,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: context.getHeight(.8),
              width: context.getWidth(),
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage('assets/images/error.jpg'),
                ),
              ),
            ),
            const Gap(Insets.lg),
            const Text(
              "Oops! Something went wrong.\n"
              "Looks like you tried to visit a page on our website that either doesn't exist or has been removed.",
              textAlign: TextAlign.center,
            ),
            const Gap(Insets.lg),
            CallToAction(
                title: 'Back To Home',
                action: () {
                  locator<NavigationService>().navigateTo(homeRoute);
                })
          ],
        ),
      ),
    );
  }
}
