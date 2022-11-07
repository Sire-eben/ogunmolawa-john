import 'package:flutter/material.dart';
import 'package:ogunmolawa_john/core/widgets/footer/footer.dart';
import 'package:ogunmolawa_john/views/private_collection/layout/desktop.dart';
import 'package:ogunmolawa_john/views/private_collection/layout/mobile.dart';
import 'package:responsive_builder/responsive_builder.dart';

class PrivateCollection extends StatefulWidget {
  const PrivateCollection({super.key});

  @override
  State<PrivateCollection> createState() => _PrivateCollectionState();
}

class _PrivateCollectionState extends State<PrivateCollection> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ScreenTypeLayout(
            mobile: const PrivateCollectionMobile(),
            desktop: const PrivateCollectionDesktop(),
          ),
          const Footer(),
        ],
      ),
    );
  }
}
