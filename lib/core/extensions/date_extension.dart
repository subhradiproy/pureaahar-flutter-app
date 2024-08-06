import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

extension DateTimeX on DateTime {
  /// Convert DateTime to a certain format with [format] like
  /// 3 MAY 2023, 08:39 PM
  String format(String format) => DateFormat(format).format(this);

  /// Date in friendly readable format
  String get friendly => DateFormat.yMMMMd().format(this);

  /// Is Tomorrow Date
  bool isTomorrow(DateTime? other) {
    if (other == null) return false;
    return isAfter(other) && difference(other).inDays == 1;
  }

  /// is Same Day
  bool isSameDay(DateTime? other) => DateUtils.isSameDay(this, other);

  /// is Same Month
  bool isSameMonth(DateTime? other) => DateUtils.isSameMonth(this, other);

  /// Considers only the date part of the DateTime and not the time
  DateTime get dateOnly => DateUtils.dateOnly(this);

  /// isLeap Year
  bool get isLeapYear =>
      (year & 3) == 0 && ((year % 25) != 0 || (year & 15) == 0);

  /// Returns the number of months between two dates
  int monthsInBetween(DateTime other) => DateUtils.monthDelta(this, other);

  /// Whether the given time is after or same as the current time
  bool isAfterOrSame(DateTime other) =>
      isAfter(other) || isAtSameMomentAs(other);

  /// Whether the given time is before or same as the current time
  bool isBeforeOrSame(DateTime other) =>
      isBefore(other) || isAtSameMomentAs(other);

  /// To DateTime
  TimeOfDay toTime() => TimeOfDay.fromDateTime(this);
}

extension TimeOfDayX on TimeOfDay {
  /// Convert the time to 12 hours format
  String to12Hour() {
    final String min = '$minute'.padLeft(2, '0');
    return '$hourOfPeriod:$min ${period == DayPeriod.am ? 'AM' : 'PM'}';
  }

  /// Convert the time to 24 hours format
  String to24Hour() {
    final String hr = '$hour'.padLeft(2, '0');
    final String min = '$minute'.padLeft(2, '0');
    return '$hr:$min';
  }

  /// Compare to
  int compareTo(TimeOfDay other) {
    if (hour < other.hour) return -1;
    if (hour > other.hour) return 1;
    if (minute < other.minute) return -1;
    if (minute > other.minute) return 1;
    return 0;
  }

  /// Is Morning Time
  bool get isMorning => hour > 6 && hour < 12;

  /// Is Afternoon Time
  bool get isAfternoon => hour >= 12 && hour < 16;

  /// Is Evening Time
  bool get isEvening => hour >= 16 && hour < 20;
}
