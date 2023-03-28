import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shops/router/router.dart';

import 'home_event.dart';
import 'home_state.dart';

export 'home_event.dart';
export 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final ApplicationRouter _applicationRouter;
  HomeBloc({required ApplicationRouter applicationRouter})
      : _applicationRouter = applicationRouter,
        super(HomeState());
}
