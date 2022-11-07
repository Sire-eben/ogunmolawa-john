import 'package:flutter/material.dart';
import 'package:ogunmolawa_john/core/utils/translate_on_hover/translate_courses_card_on_hover.dart';
// ignore: avoid_web_libraries_in_flutter
import 'dart:html' as html;

import 'package:ogunmolawa_john/core/utils/translate_on_hover/translate_on_hover.dart';

extension HoverExtensions on Widget {
  static final appContainer =
      html.window.document.getElementById("app-container");

  Widget get showCursorOnHover {
    return MouseRegion(
      child: this,
      onHover: (event) => appContainer!.style.cursor = "pointer",
      onExit: (event) => appContainer!.style.cursor = "default",
    );
  }

  Widget get moveUpOnHover {
    return TranslateOnHover(child: this);
  }

  Widget get moveCardsUpOnHover {
    return TranslateCoursesOnHover(child: this);
  }
}
