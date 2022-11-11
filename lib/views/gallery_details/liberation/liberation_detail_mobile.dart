import 'package:flutter/material.dart';
import 'package:ogunmolawa_john/core/widgets/gallery/detail_preview/detail_preview_mobile.dart';
import 'package:ogunmolawa_john/generated/assets.gen.dart';

class LiberationViewMobile extends StatefulWidget {
  const LiberationViewMobile({super.key});

  @override
  State<LiberationViewMobile> createState() => _LiberationViewMobileState();
}

class _LiberationViewMobileState extends State<LiberationViewMobile> {
  @override
  Widget build(BuildContext context) {
    return DetailPreviewWidgetMobile(
      title: "LIBERATION",
      price: "4,000",
      story:
          "Don't let the bonds of fear and doubt keep you from attempting the impossible."
          "Confront your discomfort and fear to see. Reach beyond and break Free. Don't limit yourself, be Liberated",
      size: "21 X 30 in",
      medium: "Charcoal and Graphite On Paper",
      image: Assets.gallery.two.path,
    );
  }
}
