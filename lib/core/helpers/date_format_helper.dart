import 'package:intl/intl.dart';

class DateFormatHelper {
  static formatDMy(String? dateTime) {
    DateFormat dateFormatTypeMDYT = DateFormat('d MMM, yyyy');
    return dateFormatTypeMDYT
        .format(DateTime.parse(dateTime ?? DateTime.now().toString()));
  }
}
