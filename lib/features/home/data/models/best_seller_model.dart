import 'package:freezed_annotation/freezed_annotation.dart';

import 'restaurant_model.dart';

part 'generated/best_seller_model.freezed.dart';
part 'generated/best_seller_model.g.dart';

@freezed
@JsonSerializable()
sealed class BestSellerModel with _$BestSellerModel {
  const factory BestSellerModel({
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
  }) = _BestSellerModel;

  const BestSellerModel._();

  factory BestSellerModel.fromJson(Map<String, Object?> json) =>
      _$BestSellerModelFromJson(json);

  Map<String, Object?> toJson() => _$BestSellerModelToJson(this);
}

@freezed
@JsonSerializable()
sealed class OptionsModel with _$OptionsModel {
  const factory OptionsModel({
    @JsonKey(name: '_id') required String id,
    @Default(<ChoiceModel>[]) List<ChoiceModel> choices,
    @Default(<({String name, int additionalPrice})>[])
    List<({String name, int additionalPrice})> addons,
  }) = _OptionsModel;

  const OptionsModel._();

  factory OptionsModel.fromJson(Map<String, Object?> json) =>
      _$OptionsModelFromJson(json);

  Map<String, Object?> toJson() => _$OptionsModelToJson(this);
}

@freezed
@JsonSerializable()
sealed class ChoiceModel with _$ChoiceModel {
  const factory ChoiceModel({
    @JsonKey(name: '_id') required String id,
    required String name,
    @Default(true) bool isRequired,
    @Default(<({bool isDefault, int additionalPrice, String name})>[])
    List<({bool isDefault, int additionalPrice, String name})> choiceDetails,
  }) = _ChoiceModel;

  const ChoiceModel._();

  factory ChoiceModel.fromJson(Map<String, Object?> json) =>
      _$ChoiceModelFromJson(json);

  Map<String, Object?> toJson() => _$ChoiceModelToJson(this);
}
