import 'package:flutter/material.dart' show TimeOfDay;
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/models/entity_mapper.dart';
import '../../../../core/models/json_parsers/time_of_day_convertor.dart';
import '../../domain/entities/restaurant_entity.dart';
import 'menu_item_model.dart';

part 'generated/restaurant_model.freezed.dart';
part 'generated/restaurant_model.g.dart';

@freezed
@JsonSerializable()
class RestaurantModel
    with _$RestaurantModel
    implements EntityMapper<Restaurant> {
  const factory RestaurantModel({
    required String restaurantId,
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
      {'restaurantOutlets': final List<dynamic> outlets} => outlets
          .cast<Map<String, Object?>>()
          .map(RestaurantModel.fromJson)
          .toList(),
      _ => throw const FormatException('Invalid JSON format'),
    };
  }

  @override
  Restaurant toEntity() {
    return Restaurant(
      restaurantId: restaurantId,
      name: name,
      description: description,
      nearestOutlet: nearestOutlet?.toEntity(),
      serviceableOutlets: serviceableOutlets.toEntityList(),
    );
  }
}

/// Custom JSON parser for the menu sections
//TODO: Implement the custom JSON parser for the menu sections
List<MenuSectionModel> _menuFromJson(List<Object?> json) {
  final List<Map<String, Object?>> array = json.cast<Map<String, Object?>>();
  return switch (array) {
    [{'category': String}, ...] => <MenuSectionModel>[],
    // [{'category': Map<String, Object?> }, ...] =>
    //   array.map(MenuSectionModel.fromJson).toList(),
    _ => throw const FormatException('Invalid JSON format'),
  };
}

@freezed
@JsonSerializable()
class OutletModel with _$OutletModel implements EntityMapper<Outlet> {
  const factory OutletModel({
    @JsonKey(name: '_id') required String id,
    @JsonKey(name: 'outletLocation')
    required ({double latitude, double longitude, double distance}) location,
    required String outletAddress,
    @TimeOfDayConvertor.twentyFourHour()
    required ({TimeOfDay fromTime, TimeOfDay toTime}) timing,
    @JsonKey(name: 'acceptingOrder', defaultValue: false)
    required bool isAcceptingOrder,
    @JsonKey(defaultValue: <MenuSectionModel>[], fromJson: _menuFromJson)
    required List<MenuSectionModel> menuSections,
    @JsonKey(defaultValue: <String>[])
    @Default(<String>[])
    List<String> certifications,
    @Default(false) bool isOpened,
    String? rating,
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
class MenuSectionCategoryModel
    with _$MenuSectionCategoryModel
    implements EntityMapper<MenuSectionCategory> {
  const factory MenuSectionCategoryModel({
    @JsonKey(name: '_id') required String id,
    required DateTime createdAt,
    required DateTime updatedAt,
    required String outletId,
    required String categoryName,
    required String categoryDescription,
    @JsonKey(defaultValue: true) @Default(true) bool isActive,
  }) = _MenuSectionCategoryModel;

  const MenuSectionCategoryModel._();

  factory MenuSectionCategoryModel.fromJson(Map<String, Object?> json) =>
      _$MenuSectionCategoryModelFromJson(json);

  Map<String, Object?> toJson() => _$MenuSectionCategoryModelToJson(this);

  @override
  MenuSectionCategory toEntity() {
    return MenuSectionCategory(
      id: id,
      createdAt: createdAt,
      updatedAt: updatedAt,
      outletId: outletId,
      categoryName: categoryName,
      categoryDescription: categoryDescription,
      isActive: isActive,
    );
  }
}

@freezed
@JsonSerializable()
class MenuSectionModel
    with _$MenuSectionModel
    implements EntityMapper<MenuSection>, Comparable<MenuSectionModel> {
  const factory MenuSectionModel({
    @JsonKey(name: '_id') required String id,
    required MenuSectionCategoryModel category,
    @Default(1) int position,
    @Default(<MenuItemModel>[]) List<MenuItemModel> items,
  }) = _MenuSectionModel;

  const MenuSectionModel._();

  factory MenuSectionModel.fromJson(Map<String, Object?> json) =>
      _$MenuSectionModelFromJson(json);

  Map<String, Object?> toJson() => _$MenuSectionModelToJson(this);

  @override
  int compareTo(MenuSectionModel other) => position.compareTo(other.position);

  @override
  MenuSection toEntity() {
    return MenuSection(
      id: id,
      category: category.toEntity(),
      position: position,
      items: items.toEntityList(),
    );
  }
}
