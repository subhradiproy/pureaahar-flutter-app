import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/models/restaurant_model.dart'
    show Location, MenuItem, Timing;

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

  const Restaurant._();
}

@freezed
sealed class Outlet with _$Outlet {
  const factory Outlet({
    required String restaurantId,
    required Location outletLocation,
    required String outletAddress,
    required Timing timing,
    @Default(false) bool isAcceptingOrder,
    String? rating,
    @Default(<String>[]) List<String> certifications,
    @Default(<MenuSection>[]) List<MenuSection> menuSections,
    @Default(false) bool isOpened,
    int? ratingCount,
    double? distanceDelta,
  }) = _Outlet;

  const Outlet._();
}

@freezed
sealed class MenuSection with _$MenuSection {
  const factory MenuSection({
    required String category,
    @Default(1) int position,
    @Default(<MenuItem>[]) List<MenuItem> items,
  }) = _MenuSection;

  const MenuSection._();
}
