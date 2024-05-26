import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:peatill/features/all_plan/presentation/route.dart';
import 'package:peatill/features/me/presentation/route.dart';
import 'package:peatill/features/today/presentation/route.dart';

import '../features/home/presentation/home_page.dart';
import '../widgets/router_page.dart';

part 'app_route.g.dart';

part 'home_route.dart';

@TypedGoRoute<MainRoute>(
  path: '/',
  routes: [
    homeRoute,
  ],
)
@immutable
class MainRoute extends GoRouteData {
  const MainRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) => Container();
}
