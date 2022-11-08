import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ogunmolawa_john/config/constants.dart';
import 'package:ogunmolawa_john/core/utils/extensions/hover_extensions.dart';
import 'package:url_launcher/url_launcher_string.dart';

class SocialLinks extends StatelessWidget {
  const SocialLinks({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        IconButton(
          onPressed: () {
            launchUrlString(linkedlnUrl);
          },
          icon: const FaIcon(
            FontAwesomeIcons.linkedin,
            color: Colors.black,
            size: 16,
          ),
        ).moveUpOnHover,
        IconButton(
          onPressed: () {
            launchUrlString(instagramUrl);
          },
          icon: const FaIcon(
            FontAwesomeIcons.instagram,
            color: Colors.black,
            size: 16,
          ),
        ).moveUpOnHover,
        IconButton(
          onPressed: () {},
          icon: const FaIcon(
            FontAwesomeIcons.facebookF,
            color: Colors.black,
            size: 16,
          ),
        ).moveUpOnHover,
        IconButton(
          onPressed: () {},
          icon: const FaIcon(
            FontAwesomeIcons.twitter,
            color: Colors.black,
            size: 16,
          ),
        ).moveUpOnHover,
      ],
    );
  }
}
