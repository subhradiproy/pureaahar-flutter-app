import 'package:flutter/material.dart' show TimeOfDay;
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../app/typedefs/typedefs.dart' show JSON;
import '../../../../core/models/entity_mapper.dart';
import '../../../../core/models/json_parsers/time_of_day_convertor.dart';
import '../../domain/entities/restaurant_entity.dart';

part 'generated/restaurant_model.freezed.dart';
part 'generated/restaurant_model.g.dart';

@freezed
@JsonSerializable()
sealed class RestaurantModel
    with _$RestaurantModel
    implements EntityMapper<Restaurant> {
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

  Map<String, Object?> toJson() => _$RestaurantModelToJson(this);

  static List<RestaurantModel> fromJsonList(Map<String, Object?>? json) {
    return switch (json) {
      null => <RestaurantModel>[],
      {'restaurantOutlets': final List<dynamic>? list} =>
        list?.cast<JSON>().map(RestaurantModel.fromJson).toList() ??
            <RestaurantModel>[],
      _ => throw const FormatException('Invalid JSON format'),
    };
  }

  @override
  Restaurant toEntity() {
    return Restaurant(
      id: id,
      name: name,
      description: description,
      nearestOutlet: nearestOutlet?.toEntity(),
      serviceableOutlets: serviceableOutlets.toEntityList(),
    );
  }
}

@freezed
@JsonSerializable()
sealed class OutletModel with _$OutletModel implements EntityMapper<Outlet> {
  const factory OutletModel({
    @JsonKey(name: 'restaurantId') required String id,
    @JsonKey(name: 'outletLocation')
    required ({double latitude, double longitude, double distance}) location,
    required String outletAddress,
    @TimeOfDayConvertor.twentyFourHour()
    required ({TimeOfDay fromTime, TimeOfDay toTime}) timing,
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

  Map<String, Object?> toJson() => _$OutletModelToJson(this);

  @override
  Outlet toEntity() {
    return Outlet(
      id: id,
      location: location,
      outletAddress: outletAddress,
      timing: timing,
      isAcceptingOrder: isAcceptingOrder,
      rating: rating,
      certifications: certifications,
      menus: menuSections.toEntityList(),
      isOpened: isOpened,
      ratingCount: ratingCount,
      distanceDelta: distanceDelta,
    );
  }
}

@freezed
@JsonSerializable()
sealed class MenuSectionModel
    with _$MenuSectionModel
    implements EntityMapper<MenuSection> {
  const factory MenuSectionModel({
    required String category,
    @Default(1) int position,
    @Default(<({String itemId, int position})>[])
    List<({String itemId, int position})> items,
  }) = _MenuSection;

  const MenuSectionModel._();

  factory MenuSectionModel.fromJson(Map<String, Object?> json) =>
      _$MenuSectionModelFromJson(json);

  Map<String, Object?> toJson() => _$MenuSectionModelToJson(this);

  @override
  MenuSection toEntity() {
    return MenuSection(
      category: category,
      position: position,
      items: items,
    );
  }
}
