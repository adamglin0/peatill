import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class RouteErrorPage extends HookConsumerWidget {
  const RouteErrorPage(this.error, {super.key});

  final Exception? error;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Center(
        child: Text('error route : $error'),
      ),
    );
  }
}
