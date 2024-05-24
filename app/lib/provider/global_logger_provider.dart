import 'package:logger/logger.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'global_logger_provider.g.dart';

@Riverpod(keepAlive: true)
class GlobalLogger extends _$GlobalLogger {
  @override
  Logger build() {
    return Logger(
      printer: PrettyPrinter(
        methodCount: 0,
        errorMethodCount: 5,
        lineLength: 50,
        colors: true,
        printEmojis: true,
        printTime: true,
      ),
    );
  }
}
