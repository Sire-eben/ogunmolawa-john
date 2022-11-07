import 'package:flutter/material.dart';
import 'package:ogunmolawa_john/config/theme.dart';

class TranslateCoursesOnHover extends StatefulWidget {
  final Widget child;

  const TranslateCoursesOnHover({
    super.key,
    required this.child,
  });

  @override
  State<TranslateCoursesOnHover> createState() =>
      _TranslateCoursesOnHoverState();
}

class _TranslateCoursesOnHoverState extends State<TranslateCoursesOnHover> {
  final nonHoverTransform = Matrix4.identity();
  final hoverTransform = Matrix4.identity()..translate(0, -10, 0);

  bool _hovering = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (e) => _mouseEnter(true),
      onExit: (e) => _mouseEnter(false),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
            // offset: Offset(6, 4),
            blurRadius: 10,
            color: _hovering
                ? AppColors.primaryColor.withOpacity(.2)
                : AppColors.primaryColor.withOpacity(.2),
          )
        ]),
        // color: _hovering ? AppColors.primaryLight : Colors.white,
        transform: _hovering ? hoverTransform : nonHoverTransform,
        child: widget.child,
      ),
    );
  }

  void _mouseEnter(bool hovering) {
    setState(() {
      _hovering = hovering;
    });
  }
}
