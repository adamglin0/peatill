import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../routes/app_route.dart';
import '../widgets/route_error_page.dart';

part 'global_go_router_provider.g.dart';

final rootNavigatorKey = GlobalKey<NavigatorState>();

@Riverpod(keepAlive: true)
GoRouter globalGoRouter(GlobalGoRouterRef ref) {
  return GoRouter(
    debugLogDiagnostics: true,
    navigatorKey: rootNavigatorKey,
    initialLocation: '/today',
    routes: $appRoutes,
    redirect: (context, state) {
      return null;
    },
    errorBuilder: (context, state) => RouteErrorPage(state.error),
  );
}
