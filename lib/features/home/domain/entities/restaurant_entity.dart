import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

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
    required String category,
    @Default(1) int position,
    @Default(<({String itemId, int position})>[])
    List<({String itemId, int position})> items,
  }) = _MenuSection;
}
