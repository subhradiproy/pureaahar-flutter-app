import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/models/entity_mapper.dart';
import '../../domain/entities/menu_item_entity.dart';
import 'choice_and_addons_model.dart';

part 'generated/menu_item_model.freezed.dart';
part 'generated/menu_item_model.g.dart';

@freezed
@JsonSerializable()
class MenuItemModel with _$MenuItemModel implements EntityMapper<MenuItem> {
  const factory MenuItemModel({
    required MenuOptionsModel options,
    required String outletId,
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
    @Default(false) bool isHappyHourItem,
  }) = _MenuItemModel;

  const MenuItemModel._();

  factory MenuItemModel.fromJson(Map<String, Object?> json) =>
      _$MenuItemModelFromJson(json);

  Map<String, Object?> toJson() => _$MenuItemModelToJson(this);

  @override
  MenuItem toEntity() {
    return MenuItem(
      options: options.toEntity(),
      categoryId: categoryId,
      cuisines: cuisines,
      itemName: itemName,
      status: status,
      itemDescription: itemDescription,
      itemImageUrl: itemImageUrl ?? '',
      price: pricing.isEmpty ? 0 : pricing.first.price,
      discountPercent: pricing.isEmpty ? 0 : pricing.first.discountPercent,
      isPriceActive: pricing.isNotEmpty && pricing.first.isActive,
      reviews: reviews,
      rating: rating,
      happyHourPrice: happyHourPrice,
      tags: tags,
      isInStock: isInStock,
    );
  }
}

@freezed
@JsonSerializable()
class MenuOptionsModel
    with _$MenuOptionsModel
    implements EntityMapper<MenuOptions> {
  const factory MenuOptionsModel({
    @JsonKey(name: '_id') required String id,
    @Default(<Choice>[]) List<Choice> choices,
    @Default(<Addons>[]) List<Addons> addons,
  }) = _MenuOptionsModel;

  const MenuOptionsModel._();

  factory MenuOptionsModel.fromJson(Map<String, Object?> json) =>
      _$MenuOptionsModelFromJson(json);

  Map<String, Object?> toJson() => _$MenuOptionsModelToJson(this);

  @override
  MenuOptions toEntity() {
    return MenuOptions(
      id: id,
      choices: choices,
      addons: addons,
    );
  }
}
