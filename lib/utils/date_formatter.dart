import 'package:intl/intl.dart';

extension DateParseExtension on DateTime? {
  String toFormate() {
    final DateFormat formatter = DateFormat('yyyy-MM-dd');
    if (this == null) {
      return '';
    }
    final String formatted = formatter.format(this!);
    return formatted;
  }
}
