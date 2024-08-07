import 'package:flutter/material.dart' show TimeOfDay;
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/models/entity_mapper.dart';
import '../../../../core/models/json_parsers/time_of_day_convertor.dart';
import '../../domain/entities/brand_entity.dart';
import 'menu_item_model.dart';

part 'generated/brand_model.freezed.dart';
part 'generated/brand_model.g.dart';

@freezed
@JsonSerializable()
class BrandModel with _$BrandModel implements EntityMapper<Brand> {
  const factory BrandModel({
    required String restaurantId,
    @JsonKey(name: 'restaurantName') required String name,
    @JsonKey(name: 'bg') required String background,
    String? logo,
    String? description,
    OutletModel? nearestOutlet,
    @Default(<OutletModel>[]) List<OutletModel> serviceableOutlets,
  }) = _BrandModel;

  const BrandModel._();

  factory BrandModel.fromJson(Map<String, Object?> json) =>
      _$BrandModelFromJson(json);

  Map<String, Object?> toJson() => _$BrandModelToJson(this);

  static List<BrandModel> fromJsonList(Map<String, Object?>? json) {
    return switch (json) {
      null => <BrandModel>[],
      {'restaurantOutlets': final List<dynamic> outlets} =>
        outlets.cast<Map<String, Object?>>().map(BrandModel.fromJson).toList(),
      _ => throw const FormatException('Invalid JSON format'),
    };
  }

  @override
  Brand toEntity() {
    return Brand(
      restaurantId: restaurantId,
      name: name,
      background: background,
      logo: logo,
      description: description,
      nearestOutlet: nearestOutlet?.toEntity(),
      serviceableOutlets: serviceableOutlets.toEntityList(),
    );
  }
}

@override
List<MenuSectionModel> _menuFromJson(List<Object?> json) {
  return json.cast<Map<String, Object?>>().fold<List<MenuSectionModel>>(
    <MenuSectionModel>[],
    (List<MenuSectionModel> prev, Map<String, Object?> e) => switch (e) {
      {'category': final Map<String, Object?> menu} => prev
        ..add(MenuSectionModel.fromJson(menu)),
      _ => prev,
    },
  );
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
      ratingCount: ratingCount,
      distanceDelta: distanceDelta,
      isOpened: isOpened,
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
