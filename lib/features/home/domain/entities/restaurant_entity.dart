import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'menu_item_entity.dart';

part 'generated/restaurant_entity.freezed.dart';

@freezed
sealed class Restaurant with _$Restaurant {
  const factory Restaurant({
    required String restaurantId,
    required String name,
    String? description,
    Outlet? nearestOutlet,
    @Default(<Outlet>[]) List<Outlet> serviceableOutlets,
  }) = _Restaurant;
}

@freezed
sealed class Outlet with _$Outlet {
  const factory Outlet({
    required String id,
    required ({double latitude, double longitude, double distance}) location,
    required String outletAddress,
    required ({TimeOfDay fromTime, TimeOfDay toTime}) timing,
    @Default(false) bool isAcceptingOrder,
    String? rating,
    @Default(<String>[]) List<String> certifications,
    @Default(<MenuSection>[]) List<MenuSection> menus,
    @Default(false) bool isOpened,
    int? ratingCount,
    double? distanceDelta,
  }) = _Outlet;
}

@freezed
sealed class MenuSection with _$MenuSection {
  const factory MenuSection({
    required String id,
    required MenuSectionCategory category,
    @Default(1) int position,
    @Default(<MenuItem>[]) List<MenuItem> items,
  }) = _MenuSection;
}

@freezed
sealed class MenuSectionCategory with _$MenuSectionCategory {
  const factory MenuSectionCategory({
    required String id,
    required DateTime createdAt,
    required DateTime updatedAt,
    required String outletId,
    required String categoryName,
    required String categoryDescription,
    @Default(true) bool isActive,
  }) = _MenuSectionCategory;
}
