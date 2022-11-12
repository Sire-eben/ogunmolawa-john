import 'package:flutter/foundation.dart';
import "package:intl/intl.dart";

String getTimestamp() => DateTime.now().toIso8601String();

DateFormat longDateFormat() => DateFormat.yMMMMd();

void runIfNotNull<T>(T? value, ValueChanged<T> func) {
  if (value != null) {
    func(value);
  }
}
