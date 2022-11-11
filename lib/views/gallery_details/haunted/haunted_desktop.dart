import 'package:flutter/material.dart';
import 'package:ogunmolawa_john/core/widgets/gallery/detail_preview/detail_preview_desktop.dart';
import 'package:ogunmolawa_john/generated/assets.gen.dart';

class HauntedViewDesktop extends StatefulWidget {
  const HauntedViewDesktop({super.key});

  @override
  State<HauntedViewDesktop> createState() => _HauntedViewDesktopState();
}

class _HauntedViewDesktopState extends State<HauntedViewDesktop> {
  @override
  Widget build(BuildContext context) {
    return DetailPreviewWidgetDesktop(
      title: "HAUNTED",
      price: "4,000",
      story:
          "‘Haunted by thoughts of a system that compels us to bear the brunt of their poor political decisions and systemic oppression’",
      size: "21 X 30 in",
      medium: "Charcoal and Graphite On Paper",
      image: Assets.gallery.one.path,
    );
  }
}
