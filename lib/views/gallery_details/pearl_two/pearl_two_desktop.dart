import 'package:flutter/material.dart';
import 'package:ogunmolawa_john/core/widgets/gallery/detail_preview/detail_preview_desktop.dart';
import 'package:ogunmolawa_john/generated/assets.gen.dart';

class BlackPearlTwoViewDesktop extends StatefulWidget {
  const BlackPearlTwoViewDesktop({super.key});

  @override
  State<BlackPearlTwoViewDesktop> createState() =>
      _BlackPearlTwoViewDesktopState();
}

class _BlackPearlTwoViewDesktopState extends State<BlackPearlTwoViewDesktop> {
  @override
  Widget build(BuildContext context) {
    return DetailPreviewWidgetDesktop(
      title: "BLACK PEARL #2 2022",
      price: "5,000",
      story:
          "Pearl is known to be a hard Precious stone and  it takes extremely rare conditions to form pearls that have that dark, eerily iridescent glow. So In this Potrait I’m likened  the black Pearl to the beauty and strong nature of African women and how women in general are taking up positions in the society and setting standards "
          "The lingering gaze of my muse alludes to my subject remaining defiant and courageous despite discrimination, odds stacked against them  and unconscious bias in the society.",
      size: "22 X 30 in",
      medium: "Charcoal and Graphite On Paper",
      image: Assets.gallery.four.path,
    );
  }
}
