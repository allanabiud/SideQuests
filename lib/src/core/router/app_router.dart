import 'package:auto_route/auto_route.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:sidequests/src/core/router/app_router.gr.dart';

part 'app_router.g.dart';

@riverpod
AppRouter appRouter(Ref ref) {
  return AppRouter();
}

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: HomeRoute.page, path: '/'),
  ];
}
