import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/models/choice_and_addons_model.dart';
import 'restaurant_entity.dart';

part 'generated/menu_item_entity.freezed.dart';

@freezed
sealed class MenuItem with _$MenuItem {
  const factory MenuItem({
    required String restaurantName,
    required MenuOptions options,
    required Outlet outletInfo,
    required String categoryId,
    required List<String> cuisines,
    required String itemName,
    required String status,
    required String itemImageUrl,
    String? itemDescription,
    @Default(<({int price, int discountPercent, bool isActive})>[])
    List<({int price, int discountPercent, bool isActive})> pricing,
    @Default(<({int rating, String userId})>[])
    List<({int rating, String userId})> reviews,
    int? rating,
    int? happyHourPrice,
    @Default(<String>[]) List<String> tags,
    @Default(false) bool isInStock,
    @Default(false) bool isVeg,
    @Default(false) bool isHappyHourItem,
  }) = _MenuItem;
}

@freezed
sealed class MenuOptions with _$MenuOptions {
  const factory MenuOptions({
    @JsonKey(name: '_id') required String id,
    @Default(<Choice>[]) List<Choice> choices,
    @Default(<Addons>[]) List<Addons> addons,
  }) = _MenuOptions;
}
