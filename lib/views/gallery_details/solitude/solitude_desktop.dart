import 'package:flutter/material.dart';
import 'package:ogunmolawa_john/core/widgets/gallery/detail_preview/detail_preview_desktop.dart';
import 'package:ogunmolawa_john/generated/assets.gen.dart';

class SolitudeViewDesktop extends StatefulWidget {
  const SolitudeViewDesktop({super.key});

  @override
  State<SolitudeViewDesktop> createState() => _SolitudeViewDesktopState();
}

class _SolitudeViewDesktopState extends State<SolitudeViewDesktop> {
  @override
  Widget build(BuildContext context) {
    return DetailPreviewWidgetDesktop(
      title: "SOLITUDE",
      price: "Sold!",
      story:
          "This piece was drawn during the heavy lockdowns of 2020. I was often alone throughout the whole period, during this period I was able to understand a whole Lot of things that I got so immersed in my own company, I got to understand Solitude is richness in self, Independence and a path unto self discovery, “Sometimes everyone around you won\’t see your vision but it\’s up to you to believe in yourself\"",
      size: "22 X 30 in",
      medium: "Charcoal and Graphite On Paper",
      image: Assets.gallery.five.path,
    );
  }
}
