import 'package:flutter/material.dart';
import 'package:ogunmolawa_john/core/routing/route_names.dart';
import 'package:ogunmolawa_john/views/404/error.dart';
import 'package:ogunmolawa_john/views/contact_me/contact_view.dart';
import 'package:ogunmolawa_john/views/gallery/gallery_view.dart';
import 'package:ogunmolawa_john/views/home/homeview.dart';
import 'package:ogunmolawa_john/views/private_collection/private_collection.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case homeRoute:
      return _getPageRoute(const HomeView(), settings);
    case contactRoute:
      return _getPageRoute(const ContactView(), settings);
    case galleryRoute:
      return _getPageRoute(const GalleryView(), settings);
    case privateCollectionRoute:
      return _getPageRoute(const PrivateCollection(), settings);

    default:
      return _getPageRoute(const PageNotFound(), settings);
  }
}

PageRoute _getPageRoute(Widget child, RouteSettings settings) {
  return _FadeRoute(child: child, routeName: settings.name!);
}

class _FadeRoute extends PageRouteBuilder {
  final Widget child;
  final String routeName;

  _FadeRoute({required this.child, required this.routeName})
      : super(
            settings: RouteSettings(name: routeName),
            pageBuilder: (
              BuildContext context,
              Animation<double> animation,
              Animation<double> secondaryAnimation,
            ) =>
                child,
            transitionsBuilder: (
              BuildContext context,
              Animation<double> animation,
              Animation<double> secondaryAnimation,
              Widget child,
            ) =>
                FadeTransition(
                  opacity: animation,
                  child: child,
                ));
}

typedef PageBuilder = Widget Function();

class PageRouter {
  static const double kDefaultDuration = .25;

  static Route<T> transitTo<T>(PageBuilder pageBuilder,
      [String? tag, double duration = kDefaultDuration]) {
    return MaterialPageRoute(
      builder: (context) => pageBuilder(),
      settings: RouteSettings(name: tag),
    );
  }
}
