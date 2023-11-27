import 'package:logger/logger.dart';

class ELoggerHelper {
  static final Logger _logger = Logger(
    printer: PrettyPrinter(),
    level: Level.debug,
  );

  static void d(message) {
    _logger.d(message);
  }

  static void i(message) {
    _logger.i(message);
  }

  static void w(message) {
    _logger.w(message);
  }

  static void e(message, [dynamic error]) {
    _logger.e(message, error: error,  stackTrace: StackTrace.current);
  }
}
