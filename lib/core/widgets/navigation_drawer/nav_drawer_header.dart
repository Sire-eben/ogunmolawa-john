import 'package:flutter/material.dart';
import 'package:ogunmolawa_john/config/theme.dart';

class NavDrawerHeader extends StatelessWidget {
  const NavDrawerHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      alignment: Alignment.center,
      color: AppColors.primaryColor,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: const [
          Text(
            "SKILL UP NOW",
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.w800,
            ),
          ),
          Text(
            "Tap here",
            style: TextStyle(
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}
