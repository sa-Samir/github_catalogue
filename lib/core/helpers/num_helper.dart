import 'package:intl/intl.dart';

class NumHelper {
  static String getShortForm(var number) {
    var format = NumberFormat.compact(locale: "en_US");
    return format.format(number);
  }
}
