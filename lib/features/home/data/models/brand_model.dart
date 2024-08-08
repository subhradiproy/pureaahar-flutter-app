import 'package:flutter/material.dart' show TimeOfDay;
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/models/entity_mapper.dart';
import '../../../../core/models/json_parsers/time_of_day_convertor.dart';
import '../../domain/entities/brand_entity.dart';
import '../../domain/entities/menu_item_entity.dart';
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

List<MenuSectionModel> _menuFromJson(List<dynamic> json) {
  return json.cast<Map<String, Object?>>().fold<List<MenuSectionModel>>(
    <MenuSectionModel>[],
    (List<MenuSectionModel> prev, Map<String, Object?> e) => switch (e) {
      {'category': Map<String, Object?> _} => prev
        ..add(MenuSectionModel.fromJson(e)),
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

  factory OutletModel.fromJson(Map<String, Object?> json) {
    return switch (json) {
      {'outlet': final Map<String, Object?> map} => _$OutletModelFromJson(map),
      _ => _$OutletModelFromJson(json),
    };
  }

  Map<String, Object?> toJson() => _$OutletModelToJson(this);

  @override
  Outlet toEntity() {
    final List<MenuSection> sections = menuSections.toEntityList();
    return Outlet(
      id: id,
      location: location,
      outletAddress: outletAddress,
      timing: timing,
      isAcceptingOrder: isAcceptingOrder,
      rating: rating,
      filterTags: sections.fold<Set<String>>(
        <String>{},
        (Set<String> set, MenuSection element) =>
            set..addAll(element.items.expand((MenuItem item) => item.tags)),
      ).toList(),
      menus: sections,
      ratingCount: ratingCount,
      distanceDelta: distanceDelta,
      isOpen: isOpened,
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
    @JsonKey(defaultValue: <({int position, MenuItemModel itemId})>[])
    @Default(<({int position, MenuItemModel itemId})>[])
    List<({int position, MenuItemModel itemId})> items,
    @Default(1) int position,
  }) = _MenuSectionModel;

  factory MenuSectionModel.fromJson(Map<String, Object?> json) =>
      _$MenuSectionModelFromJson(json);

  const MenuSectionModel._();

  Map<String, Object?> toJson() => _$MenuSectionModelToJson(this);

  @override
  int compareTo(MenuSectionModel other) => position.compareTo(other.position);

  @override
  MenuSection toEntity() {
    return MenuSection(
      id: id,
      category: category.toEntity(),
      position: position,
      items: items.map(
        (({MenuItemModel itemId, int position}) e) {
          return e.itemId.toEntity();
        },
      ).toList(),
    );
  }
}
