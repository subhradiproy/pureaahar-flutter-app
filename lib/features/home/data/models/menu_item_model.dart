import 'package:freezed_annotation/freezed_annotation.dart';

import 'choice_and_addons_model.dart';
import 'restaurant_model.dart';

part 'generated/menu_item_model.freezed.dart';
part 'generated/menu_item_model.g.dart';

@freezed
@JsonSerializable()
sealed class MenuItemModel with _$MenuItemModel {
  const factory MenuItemModel({
    @JsonKey(name: 'restaurantId')
    required ({String restaurantName}) restaurantInfo,
    required OptionsModel options,
    @JsonKey(name: 'outletId') required OutletModel outletInfo,
    required String categoryId,
    required List<String> cuisines,
    required String itemName,
    required String status,
    String? itemDescription,
    String? itemImageUrl,
    @Default(<({int price, int discountPercent, bool isActive})>[])
    List<({int price, int discountPercent, bool isActive})> pricing,
    @Default(<({int rating, String userId})>[])
    List<({int rating, String userId})> reviews,
    @JsonKey(name: 'Rating') int? rating,
    int? happyHourPrice,
    @Default(<String>[]) List<String> tags,
    @Default(false) bool isInStock,
    @Default(false) bool isVeg,
    @Default(false) bool isHappyHourItem,
  }) = _MenuItemModel;

  const MenuItemModel._();

  factory MenuItemModel.fromJson(Map<String, Object?> json) =>
      _$MenuItemModelFromJson(json);

  Map<String, Object?> toJson() => _$MenuItemModelToJson(this);
}

@freezed
@JsonSerializable()
sealed class OptionsModel with _$OptionsModel {
  const factory OptionsModel({
    @JsonKey(name: '_id') required String id,
    @Default(<ChoiceModel>[]) List<ChoiceModel> choices,
    @Default(<Addons>[]) List<Addons> addons,
  }) = _OptionsModel;

  const OptionsModel._();

  factory OptionsModel.fromJson(Map<String, Object?> json) =>
      _$OptionsModelFromJson(json);

  Map<String, Object?> toJson() => _$OptionsModelToJson(this);
}
