import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:peatill/providers/global_logger_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'app_startup.g.dart';

/// 如果在初始化中抛出错误，则会变成AsyncError，并显示AppStartupErrorWidget
@Riverpod(keepAlive: true)
Future<void> appStartup(AppStartupRef ref) async {
  ref.watch(globalLoggerProvider);
}

/// Widget class to manage asynchronous app initialization
class AppStartupWidget extends ConsumerWidget {
  /// init
  const AppStartupWidget(this.onLoaded, {super.key});

  /// 加载完成后显示的小部件
  final WidgetBuilder onLoaded;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appStartupState = ref.watch(appStartupProvider);
    return switch (appStartupState) {
      AsyncData() => onLoaded(context),
      AsyncLoading() => const AppStartupLoadingWidget(),
      AsyncError(:final error) => AppStartupErrorWidget(
          message: error.toString(),
          onRetry: () => ref.invalidate(appStartupProvider),
        ),
    };
  }
}

/// ローディング中表示されるWidget
class AppStartupLoadingWidget extends StatelessWidget {
  /// init
  const AppStartupLoadingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(body: Center(child: CircularProgressIndicator())),
      debugShowCheckedModeBanner: false,
    );
  }
}

/// エラー時に表示されるWidget
class AppStartupErrorWidget extends StatelessWidget {
  /// init
  const AppStartupErrorWidget({
    super.key,
    required this.message,
    required this.onRetry,
  });

  /// エラーメッセージ
  final String message;

  /// リトライボタン押下時のコールバック
  final VoidCallback onRetry;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(message, style: Theme.of(context).textTheme.headlineSmall),
              const Gap(16),
              ElevatedButton(onPressed: onRetry, child: const Text('Noto')),
            ],
          ),
        ),
      ),
    );
  }
}
