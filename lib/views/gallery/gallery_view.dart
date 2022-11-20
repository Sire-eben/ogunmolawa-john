import 'package:flutter/material.dart';
import 'package:ogunmolawa_john/views/gallery/layout/desktop.dart';
import 'package:ogunmolawa_john/views/gallery/layout/mobile.dart';
import 'package:responsive_builder/responsive_builder.dart';

class GalleryView extends StatefulWidget {
  const GalleryView({super.key});

  @override
  State<GalleryView> createState() => _GalleryViewState();
}

class _GalleryViewState extends State<GalleryView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: ScreenTypeLayout(
          mobile: const GalleryViewMobile(),
          desktop: const GalleryViewDesktop(),
        ),
      ),
    );
  }
}
