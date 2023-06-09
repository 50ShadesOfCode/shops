import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:shops/router/route_configuration.dart';

import '../features/splash/splash.dart';

class AppRouteInformationParser
    extends RouteInformationParser<RouteConfiguration> {
  bool isStartUp = true;
  Uri? initialUri;

  @override
  Future<RouteConfiguration> parseRouteInformation(
      RouteInformation routeInformation) {
    Uri? uri;
    late Page<dynamic> page;
    if (isStartUp && initialUri != null) {
      uri = initialUri;
      isStartUp = false;
    } else {
      uri = Uri.tryParse(routeInformation.location.toString());
    }
    if (uri == null || uri.pathSegments.isEmpty) {
      page = Splash.page();
    }
    return SynchronousFuture<RouteConfiguration>(
      RouteConfiguration(page: page),
    );
  }
}