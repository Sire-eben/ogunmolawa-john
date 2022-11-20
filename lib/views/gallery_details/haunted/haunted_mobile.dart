import 'package:flutter/material.dart';
import 'package:ogunmolawa_john/core/widgets/gallery/detail_preview/detail_preview_mobile.dart';
import 'package:ogunmolawa_john/generated/assets.gen.dart';

class HauntedViewMobile extends StatefulWidget {
  const HauntedViewMobile({super.key});

  @override
  State<HauntedViewMobile> createState() => _HauntedViewMobileState();
}

class _HauntedViewMobileState extends State<HauntedViewMobile> {
  @override
  Widget build(BuildContext context) {
    return DetailPreviewWidgetMobile(
      title: "HAUNTED",
      price: "3,000",
      story:
          "‘Haunted by thoughts of a system that compels us to bear the brunt of their poor political decisions and systemic oppression’",
      size: "21 X 30 in",
      medium: "Charcoal and Graphite On Paper",
      image: Assets.gallery.one.path,
    );
  }
}
