import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shops/features/home/home.dart';
import 'package:shops/router/router.dart';

import 'splash_event.dart';

export 'splash_event.dart';

class SplashBloc extends Bloc<SplashEvent, bool> {
  SplashBloc({
    required ApplicationRouter applicationRouter,
  })  : _applicationRouter = applicationRouter,
        super(false) {
    on<AnimationCompletedEvent>(_onAnimationCompletedEvent);
  }

  final ApplicationRouter _applicationRouter;

  void _onAnimationCompletedEvent(
    AnimationCompletedEvent event,
    Emitter<bool> emit,
  ) {
    _applicationRouter.replace(Home.page());
    emit(state);
  }
}
