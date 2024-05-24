import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:peatill/provider/global_logger_provider.dart';

import 'app_startup.dart';
import 'model/exception/app_exception.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  DartPluginRegistrant.ensureInitialized();
  runApp(
    ProviderScope(
      observers: [_AsyncErrorLogger()],
      child: AppStartupWidget((_) => const Center()),
    ),
  );
}

class _AsyncErrorLogger extends ProviderObserver {
  @override
  void didUpdateProvider(
    ProviderBase<dynamic> provider,
    Object? previousValue,
    Object? newValue,
    ProviderContainer container,
  ) {
    final errorLogger = container.read(globalLoggerProvider);
    final error = _findError(newValue);
    if (error != null) {
      if (error.error case final AppException appError) {
        // only log the AppException data
        errorLogger.e(appError);
      } else {
        errorLogger.e(error.error, stackTrace: error.stackTrace);
      }
    }
  }

  AsyncError<dynamic>? _findError(Object? value) {
    if (value is AsyncError) {
      return value;
    } else {
      return null;
    }
  }
}
