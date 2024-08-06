import 'package:flutter/material.dart' show TimeOfDay;
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/models/json_parsers/time_of_day_convertor.dart';

part 'generated/restaurant_model.freezed.dart';
part 'generated/restaurant_model.g.dart';

/// Named Records
typedef Timing = ({TimeOfDay fromTime, TimeOfDay toTime});
typedef Location = ({double latitude, double longitude, double distance});
typedef MenuItem = ({String itemId, int position});

@Freezed(copyWith: false)
@JsonSerializable()
sealed class RestaurantModel with _$RestaurantModel {
  const factory RestaurantModel({
    @JsonKey(name: 'restaurantId') required String id,
    @JsonKey(name: 'restaurantName') required String name,
    String? description,
    OutletModel? nearestOutlet,
    @Default(<OutletModel>[]) List<OutletModel> serviceableOutlets,
  }) = _RestaurantModel;

  const RestaurantModel._();

  factory RestaurantModel.fromJson(Map<String, Object?> json) =>
      _$RestaurantModelFromJson(json);
}

@Freezed(copyWith: false)
@JsonSerializable()
sealed class OutletModel with _$OutletModel {
  const factory OutletModel({
    required String restaurantId,
    required Location outletLocation,
    required String outletAddress,
    @TimeOfDayConvertor.twentyFourHour() required Timing timing,
    @JsonKey(name: 'acceptingOrder', defaultValue: false)
    required bool isAcceptingOrder,
    String? rating,
    @Default(<String>[]) List<String> certifications,
    @Default(<MenuSectionModel>[]) List<MenuSectionModel> menuSections,
    @Default(false) bool isOpened,
    int? ratingCount,
    double? distanceDelta,
  }) = _OutletModel;

  const OutletModel._();

  factory OutletModel.fromJson(Map<String, Object?> json) =>
      _$OutletModelFromJson(json);
}

@Freezed(copyWith: false)
@JsonSerializable()
sealed class MenuSectionModel with _$MenuSectionModel {
  const factory MenuSectionModel({
    required String category,
    @Default(1) int position,
    @Default(<MenuItem>[]) List<MenuItem> items,
  }) = _MenuSection;

  const MenuSectionModel._();

  factory MenuSectionModel.fromJson(Map<String, Object?> json) =>
      _$MenuSectionModelFromJson(json);
}
