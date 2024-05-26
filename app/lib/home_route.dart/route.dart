import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:peatill/features/all_plan/presentation/route.dart';
import 'package:peatill/features/me/presentation/route.dart';

import '../features/home/presentation/home_page.dart';
import '../features/today/presentation/route.dart';
import '../widgets/router_page.dart';

const homeRoute = TypedStatefulShellRoute<HomeShellRouteData>(
  branches: [
    TypedStatefulShellBranch<_TodayBranchData>(
      routes: [
        TypedGoRoute<TodayPageRoute>(
          path: 'today',
        ),
      ],
    ),
    TypedStatefulShellBranch<_PlanBranchData>(
      routes: [
        TypedGoRoute<AllPlanPageRoute>(
          path: 'all_plan',
        ),
      ],
    ),
    TypedStatefulShellBranch<_MeBranchData>(
      routes: [
        TypedGoRoute<MePageRoute>(
          path: 'me',
        ),
      ],
    ),
  ],
);

class HomeShellRouteData extends StatefulShellRouteData {
  const HomeShellRouteData();

  @override
  Page<void> pageBuilder(
    BuildContext context,
    GoRouterState state,
    StatefulNavigationShell navigationShell,
  ) {
    return FadeTransitionPage(
      state.pageKey,
      HomePage(
        navigationShell: navigationShell,
      ),
    );
  }

  static const String $restorationScopeId = 'home_shell';
}

class _TodayBranchData extends StatefulShellBranchData {
  const _TodayBranchData();
}

class _PlanBranchData extends StatefulShellBranchData {
  const _PlanBranchData();
}

class _MeBranchData extends StatefulShellBranchData {
  const _MeBranchData();
}
