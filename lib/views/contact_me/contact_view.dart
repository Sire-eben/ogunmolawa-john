import 'package:flutter/material.dart';
import 'package:ogunmolawa_john/views/contact_me/layout/desktop.dart';
import 'package:ogunmolawa_john/views/contact_me/layout/mobile.dart';
import 'package:responsive_builder/responsive_builder.dart';

class ContactView extends StatefulWidget {
  const ContactView({super.key});

  @override
  State<ContactView> createState() => _ContactViewState();
}

class _ContactViewState extends State<ContactView> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: const ContactViewMobile(),
      desktop: const ContactViewDesktop(),
    );
  }
}
