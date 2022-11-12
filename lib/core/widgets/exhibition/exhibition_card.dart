import 'package:flutter/material.dart';
import 'package:ogunmolawa_john/config/theme.dart';
import 'package:ogunmolawa_john/core/utils/extensions/context.dart';

class ExhibitionCard extends StatelessWidget {
  final String text;
  final double? width;

  const ExhibitionCard({
    Key? key,
    required this.text,
    this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width ?? context.width,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      padding: const EdgeInsets.all(Insets.md),
      margin: const EdgeInsets.only(
        right: Insets.lg,
        left: Insets.lg,
        bottom: Insets.lg,
      ),
      child: Text(text),
    );
  }
}
