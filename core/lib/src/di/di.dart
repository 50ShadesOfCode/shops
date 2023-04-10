import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:get_it/get_it.dart';
import 'package:shops/router/router.dart';

final AppDI appDI = AppDI();
final GetIt appLocator = GetIt.instance();

class AppDI {
  void initDependencies() {
    final ApplicationRouter appRouter = ApplicationRouter();
    appLocator.registerSingleton(appRouter);
    appLocator.registerSingleton<AppRouteInformationParser>(
      AppRouteInformationParser(),
    );
    final FirebaseAnalytics analytics = FirebaseAnalytics.instance;
    appLocator.registerLazySingleton<FirebaseAnalytics>(
      () => analytics,
    );
  }
}
