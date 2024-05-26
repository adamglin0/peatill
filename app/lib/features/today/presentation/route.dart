import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:peatill/features/today/presentation/today_page.dart';

class TodayPageRoute extends GoRouteData {
  const TodayPageRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) => const TodayPage();
}
