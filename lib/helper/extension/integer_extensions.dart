import '../constant/constants_resource.dart';
import '../constant/strings_resource.dart';

extension IntegerExtensions on int {
  dynamic get formattedTime {
    int sec = this % 60;
    int min = (this / 60).floor();
    String minute = min.toString().length <= 1 ? "0$min" : "$min";
    String second = sec.toString().length <= 1 ? "0$sec" : "$sec";
    return "$minute:$second";
  }

  int get millisecondsToSeconds {
    int seconds = this ~/ 1000;
    if (seconds == 0) {
      return 1;
    } else {
      return seconds;
    }
  }

  String get getDateOnlyFromMilliseconds {
    DateTime dateTime = DateTime.fromMillisecondsSinceEpoch(this * 1000);

    String month = ConstantsResource.MONTHS_LIST[dateTime.month - 1];
    String day = dateTime.day.toString();
    String year = dateTime.year.toString();
    DateTime today = DateTime.now();
    if (today.day.toString() == day) {
      return StringsResource.STR_TODAY;
    }
    if ((today.day - 1).toString() == day) {
      return StringsResource.STR_YESTERDAY;
    }
    return '$day $month $year';
  }

  String get getTimeOnlyFromMilliseconds {
    DateTime dateTime = DateTime.fromMillisecondsSinceEpoch(this * 1000);
    int hour = dateTime.hour;
    String amPm = '';
    if (hour >= 12) {
      amPm = StringsResource.STR_PM;
    } else {
      amPm = StringsResource.STR_AM;
    }
    if (hour > 12) {
      hour -= 12;
    }
    if (hour == 0) {
      hour = 12;
    }
    String minutes = dateTime.minute.toString().length > 1
        ? "${dateTime.minute}"
        : "0${dateTime.minute}";
    String hoursString = hour.toString().length > 1 ? "$hour" : "0$hour";

    return "$hoursString:$minutes $amPm";
  }
}
