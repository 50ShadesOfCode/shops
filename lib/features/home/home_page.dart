import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shops/features/home/bloc/home_bloc.dart';
import 'package:shops/features/home/home_view.dart';
import 'package:shops/router/router.dart';

class HomePage extends PageWithScaffoldKey<dynamic> {
  @override
  Route<dynamic> createRoute(BuildContext context) =>
      MaterialPageRoute<dynamic>(
        settings: this,
        builder: (BuildContext context) => BlocProvider<HomeBloc>(
          create: (_) => HomeBloc(
            applicationRouter: appLocator.get<ApplicationRouter>(),
          ),
          child: HomeView(),
        ),
      );
}
