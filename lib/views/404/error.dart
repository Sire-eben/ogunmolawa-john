import 'package:flutter/material.dart';
import 'package:ogunmolawa_john/config/theme.dart';
import 'package:ogunmolawa_john/core/routing/route_names.dart';
import 'package:ogunmolawa_john/core/services/navigation_service.dart';
import 'package:ogunmolawa_john/core/utils/extensions/context.dart';
import 'package:ogunmolawa_john/core/widgets/call_to_action/call_to_action.dart';
import 'package:ogunmolawa_john/generated/assets.gen.dart';
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
              height: context.getHeight(.6),
              width: context.getWidth(),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage(Assets.images.error.path),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(Insets.lg),
              child: Text(
                "Oops! Something went wrong.\n"
                "Looks like you tried to visit a page on our website that either doesn't exist or has been removed.",
                textAlign: TextAlign.center,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: Insets.lg),
              child: CallToAction(
                  title: 'Back To Home',
                  action: () {
                    locator<NavigationService>().navigateTo(homeRoute);
                  }),
            )
          ],
        ),
      ),
    );
  }
}
