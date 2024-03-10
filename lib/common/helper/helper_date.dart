import 'package:intl/intl.dart';

class HelperDate {
  /// docs: https://stackoverflow.com/questions/16126579/how-do-i-format-a-date-with-dart
  /// "timeStarted": "2023-04-05T15:00:53.973+07:00",

  static DateTime parseStringAsDate(String format, String resource) {
    return DateFormat(format).parse(resource);
  }
}