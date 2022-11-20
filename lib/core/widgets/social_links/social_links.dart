import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ogunmolawa_john/config/constants.dart';
import 'package:ogunmolawa_john/core/utils/extensions/hover_extensions.dart';
import 'package:url_launcher/url_launcher_string.dart';

class SocialLinks extends StatelessWidget {
  final MainAxisAlignment? alignment;

  const SocialLinks({
    Key? key,
    this.alignment,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Row(
        mainAxisAlignment: alignment ?? MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          IconButton(
            onPressed: () {
              launchUrlString(linkedlnUrl);
            },
            icon: const FaIcon(
              FontAwesomeIcons.linkedin,
              color: Color(0xFF0072B1),
              size: 16,
            ),
          ).moveUpOnHover,
          IconButton(
            onPressed: () => launchUrlString(instagramUrl),
            icon: const FaIcon(
              FontAwesomeIcons.instagram,
              color: Color(0xFF8A3AB9),
              size: 16,
            ),
          ).moveUpOnHover,
          IconButton(
            onPressed: () => launchUrlString(facebookUrl),
            icon: const FaIcon(
              FontAwesomeIcons.facebookF,
              color: Color(0xFF3B5998),
              size: 16,
            ),
          ).moveUpOnHover,
          IconButton(
            onPressed: () => launchUrlString(twitterUrl),
            icon: const FaIcon(
              FontAwesomeIcons.twitter,
              color: Color(0xFF00ACEE),
              size: 16,
            ),
          ).moveUpOnHover,
          IconButton(
            onPressed: () => launchUrlString(youtubeUrl),
            icon: const FaIcon(
              FontAwesomeIcons.youtube,
              color: Color(0xFFC4302B),
              size: 16,
            ),
          ).moveUpOnHover,
        ],
      );
}
