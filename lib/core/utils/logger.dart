import "dart:convert";
import "dart:developer";

class Log {
  const Log._();

  /// debug log
  static void d(Object? message, [Object? error, StackTrace? trace]) {
    final msg = "\x1B[37mDebug: ${_stringifyMessage(message)}\x1B";
    log(msg, stackTrace: trace, error: error);
  }

  /// json formatted log
  static void json(Object? message, [Object? error, StackTrace? trace]) {
    try {
      final msg = "\x1B[37m${_stringifyMessage(jsonEncode(message))}\x1B";
      log(msg, stackTrace: trace, error: error);
    } catch (e) {
      final msg =
          "\x1B[37m${_stringifyMessage(jsonEncode(message.toString()))}\x1B";
      log(msg, stackTrace: trace, error: error);
    }
  }

  /// error log
  static void e(Object? e, [Object? error, StackTrace? trace]) {
    final msg = "\x1B[37mError: ${_stringifyMessage(e)}\x1B";
    log("\x1B[41m$msg\x1B", stackTrace: trace, error: error);
  }

  static String _stringifyMessage(Object? message) {
    const decoder = JsonDecoder();
    const encoder = JsonEncoder.withIndent(" ");
    try {
      final raw = decoder.convert(message.toString());
      return encoder.convert(raw);
    } catch (e) {
      return message.toString();
    }
  }
}
