part of 'app_route.dart';

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

  static const String $restorationScopeId = 'today_branch';
}

class _PlanBranchData extends StatefulShellBranchData {
  const _PlanBranchData();

  static const String $restorationScopeId = 'plan_branch';
}

class _MeBranchData extends StatefulShellBranchData {
  const _MeBranchData();

  static const String $restorationScopeId = 'me_branch';
}

class DropDownItem {
  const DropDownItem({
    required this.itemCd,
    required this.itemName,
  });

  final int itemCd;
  final String itemName;
}
