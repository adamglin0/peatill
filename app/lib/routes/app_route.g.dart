// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_route.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $mainRoute,
    ];

RouteBase get $mainRoute => GoRouteData.$route(
      path: '/',
      factory: $MainRouteExtension._fromState,
      routes: [
        StatefulShellRouteData.$route(
          restorationScopeId: HomeShellRouteData.$restorationScopeId,
          factory: $HomeShellRouteDataExtension._fromState,
          branches: [
            StatefulShellBranchData.$branch(
              restorationScopeId: _TodayBranchData.$restorationScopeId,
              routes: [
                GoRouteData.$route(
                  path: 'today',
                  factory: $TodayPageRouteExtension._fromState,
                ),
              ],
            ),
            StatefulShellBranchData.$branch(
              restorationScopeId: _PlanBranchData.$restorationScopeId,
              routes: [
                GoRouteData.$route(
                  path: 'all_plan',
                  factory: $AllPlanPageRouteExtension._fromState,
                ),
              ],
            ),
            StatefulShellBranchData.$branch(
              restorationScopeId: _MeBranchData.$restorationScopeId,
              routes: [
                GoRouteData.$route(
                  path: 'me',
                  factory: $MePageRouteExtension._fromState,
                ),
              ],
            ),
          ],
        ),
      ],
    );

extension $MainRouteExtension on MainRoute {
  static MainRoute _fromState(GoRouterState state) => const MainRoute();

  String get location => GoRouteData.$location(
        '/',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $HomeShellRouteDataExtension on HomeShellRouteData {
  static HomeShellRouteData _fromState(GoRouterState state) =>
      const HomeShellRouteData();
}

extension $TodayPageRouteExtension on TodayPageRoute {
  static TodayPageRoute _fromState(GoRouterState state) =>
      const TodayPageRoute();

  String get location => GoRouteData.$location(
        '/today',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $AllPlanPageRouteExtension on AllPlanPageRoute {
  static AllPlanPageRoute _fromState(GoRouterState state) =>
      const AllPlanPageRoute();

  String get location => GoRouteData.$location(
        '/all_plan',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $MePageRouteExtension on MePageRoute {
  static MePageRoute _fromState(GoRouterState state) => const MePageRoute();

  String get location => GoRouteData.$location(
        '/me',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}
