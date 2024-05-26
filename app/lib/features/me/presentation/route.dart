import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'me_page.dart';

class MePageRoute extends GoRouteData {
  const MePageRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) => const MePage();
}
