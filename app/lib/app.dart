import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:peatill/providers/global_go_router_provider.dart';

class PeatillApp extends HookConsumerWidget {
  const PeatillApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final goRouter = ref.watch(globalGoRouterProvider);
    return MaterialApp(
      builder: (context, Widget? child) {
        return Stack(
          children: [
            Material(
              child: MaterialApp.router(
                // locale: locale,
                // localizationsDelegates: AppLocalizations.localizationsDelegates,
                // supportedLocales: AppLocalizations.supportedLocales,
                debugShowCheckedModeBanner: false,
                routerConfig: goRouter,
              ),
            ),
          ],
        );
      },
    );
  }
}
