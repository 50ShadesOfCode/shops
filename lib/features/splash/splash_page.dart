import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shops/features/splash/bloc/splash_bloc.dart';
import 'package:shops/features/splash/splash_view.dart';
import 'package:shops/router/router.dart';

class SplashPage extends PageWithScaffoldKey<dynamic> {
  @override
  Route<dynamic> createRoute(BuildContext context) =>
      MaterialPageRoute<dynamic>(
        settings: this,
        builder: (BuildContext context) => BlocProvider<SplashBloc>(
          create: (_) => SplashBloc(
            applicationRouter: appLocator.get<ApplicationRouter>(),
          ),
          child: SafeArea(
            child: ScaffoldMessenger(
              key: scaffoldKey,
              child: SplashView(),
            ),
          ),
        ),
      );
}
