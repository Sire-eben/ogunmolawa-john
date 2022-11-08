import 'package:flutter/material.dart';
import 'package:ogunmolawa_john/views/centered_view/centered_view.dart';
import 'package:responsive_builder/responsive_builder.dart';

class LayoutTemplate extends StatefulWidget {
  final Widget child;

  const LayoutTemplate({super.key, required this.child});

  @override
  State<LayoutTemplate> createState() => _LayoutTemplateState();
}

class _LayoutTemplateState extends State<LayoutTemplate> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: (context, sizing) {
      return Scaffold(
          backgroundColor: Colors.white,
          key: scaffoldKey,
          body: CenteredView(child: widget.child));
    });
  }
}
