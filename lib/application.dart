import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:shops/router/router.dart';

class Application extends StatefulWidget {
  const Application({super.key});
  
  @override
  _ApplicationState createState() => _ApplicationState();
}

class _ApplicationState extends State<Application> {
  late final ApplicationRouter applicationRouter;
  late final RouteInformationParser<RouteConfiguration> routeInformationParser;

  @override
  void initState() {
    applicationRouter = appLocator.get<ApplicationRouter>();
    routeInformationParser = appLocator.get<AppRouteInformationParser>();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerDelegate: applicationRouter,
      routeInformationParser: routeInformationParser,
    );
  }
}
