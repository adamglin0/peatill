import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:peatill/features/all_plan/presentation/all_plan_page.dart';

class AllPlanPageRoute extends GoRouteData {
  const AllPlanPageRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const AllPlanPage();
}
