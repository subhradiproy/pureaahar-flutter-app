import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/models/choice_and_addons_model.dart';

part 'generated/menu_item_entity.freezed.dart';

@freezed
sealed class MenuItem with _$MenuItem {
  const factory MenuItem({
    required MenuOptions options,
    required String categoryId,
    required List<String> cuisines,
    required String itemName,
    required String status,
    required String itemImageUrl,
    required int price,
    String? itemDescription,
    @Default(0) int discountPercent,
    @Default(true) bool isPriceActive,
    @Default(<({int rating, String userId})>[])
    List<({int rating, String userId})> reviews,
    int? rating,
    int? happyHourPrice,
    @Default(<String>[]) List<String> tags,
    @Default(false) bool isInStock,
    @Default(false) bool isVeg,
    @Default(false) bool isHappyHourItem,
  }) = _MenuItem;

  const MenuItem._();

  /// Returns the display amount of the menu item
  int displayAmount() {
    if (isDiscounted) return (price - (price * discountPercent / 100)).ceil();
    return price;
  }

  bool get isDiscounted => discountPercent > 0 && isPriceActive;
}

@freezed
sealed class MenuOptions with _$MenuOptions {
  const factory MenuOptions({
    @JsonKey(name: '_id') required String id,
    @Default(<Choice>[]) List<Choice> choices,
    @Default(<Addons>[]) List<Addons> addons,
  }) = _MenuOptions;
}
