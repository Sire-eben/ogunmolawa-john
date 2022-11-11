import 'package:flutter/material.dart';
import 'package:ogunmolawa_john/core/widgets/gallery/detail_preview/detail_preview_desktop.dart';
import 'package:ogunmolawa_john/generated/assets.gen.dart';

class LiberationViewDesktop extends StatefulWidget {
  const LiberationViewDesktop({super.key});

  @override
  State<LiberationViewDesktop> createState() => _LiberationViewDesktopState();
}

class _LiberationViewDesktopState extends State<LiberationViewDesktop> {
  @override
  Widget build(BuildContext context) {
    return DetailPreviewWidgetDesktop(
      title: "LIBERATION",
      price: "4,000",
      story:
          "Don't let the bonds of fear and doubt keep you from attempting the impossible."
          "Confront your discomfort and fear to see. Reach beyond and break Free. Don't limit yourself, be Liberated",
      size: "22 X 30 in",
      medium: "Charcoal and Graphite On Paper",
      image: Assets.gallery.two.path,
    );
  }
}
