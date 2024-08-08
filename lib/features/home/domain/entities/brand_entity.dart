import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'menu_item_entity.dart';

part 'generated/brand_entity.freezed.dart';

@freezed
sealed class Brand with _$Brand {
  const factory Brand({
    required String restaurantId,
    required String name,
    required String background,
    required String? description,
    required Outlet? nearestOutlet,
    required String? logo,
    @Default(<Outlet>[]) List<Outlet> serviceableOutlets,
  }) = _Brand;

  const Brand._();

  /// Check if the brand is open and can show in the UI
  bool canShow() => nearestOutlet?.isOpen ?? false;

  bool isNearby({required double latitude, required double longitude}) {
    final double distance = nearestOutlet?.location.distance ?? 0;
    return distance <= 5;
  }
}

@freezed
sealed class Outlet with _$Outlet {
  const factory Outlet({
    required String id,
    required ({double latitude, double longitude, double distance}) location,
    required String outletAddress,
    required List<String> filterTags,
    required ({TimeOfDay fromTime, TimeOfDay toTime}) timing,
    Brand? parentBrand,
    @Default(false) bool isAcceptingOrder,
    String? rating,
    @Default(<MenuSection>[]) List<MenuSection> menus,
    @Default(false) bool isOpen,
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
