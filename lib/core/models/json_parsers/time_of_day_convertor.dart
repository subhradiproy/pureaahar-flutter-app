import 'package:flutter/material.dart' show TimeOfDay;
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../extensions/date_extension.dart';

@immutable
class TimeOfDayConvertor extends JsonConverter<TimeOfDay, String> {
  const TimeOfDayConvertor._(this.is24HourFormat);

  const TimeOfDayConvertor.twelveHour() : this._(false);
  const TimeOfDayConvertor.twentyFourHour() : this._(true);

  final bool is24HourFormat;

  @override
  TimeOfDay fromJson(String json) {
    try {
      final List<String> parts = json.split(':');
      return TimeOfDay(hour: int.parse(parts[0]), minute: int.parse(parts[1]));
    } on FormatException {
      throw const FormatException('TimeOfDay should be in the format HH:MM');
    }
  }

  @override
  String toJson(TimeOfDay object) =>
      is24HourFormat ? object.to24Hour() : object.to12Hour();
}
