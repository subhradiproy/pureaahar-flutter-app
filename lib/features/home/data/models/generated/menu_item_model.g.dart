// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../menu_item_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MenuItemModel _$MenuItemModelFromJson(Map<String, dynamic> json) =>
    MenuItemModel(
      restaurantInfo: _$recordConvert(
        json['restaurantId'],
        ($jsonValue) =>
            (restaurantName: $jsonValue['restaurantName'] as String,),
      ),
      options: OptionsModel.fromJson(json['options'] as Map<String, dynamic>),
      outletInfo:
          OutletModel.fromJson(json['outletId'] as Map<String, dynamic>),
      categoryId: json['categoryId'] as String,
      cuisines:
          (json['cuisines'] as List<dynamic>).map((e) => e as String).toList(),
      itemName: json['itemName'] as String,
      status: json['status'] as String,
      itemDescription: json['itemDescription'] as String?,
      itemImageUrl: json['itemImageUrl'] as String?,
      pricing: (json['pricing'] as List<dynamic>)
          .map((e) => _$recordConvert(
                e,
                ($jsonValue) => (
                  discountPercent:
                      ($jsonValue['discountPercent'] as num).toInt(),
                  isActive: $jsonValue['isActive'] as bool,
                  price: ($jsonValue['price'] as num).toInt(),
                ),
              ))
          .toList(),
      reviews: (json['reviews'] as List<dynamic>)
          .map((e) => _$recordConvert(
                e,
                ($jsonValue) => (
                  rating: ($jsonValue['rating'] as num).toInt(),
                  userId: $jsonValue['userId'] as String,
                ),
              ))
          .toList(),
      rating: (json['Rating'] as num?)?.toInt(),
      happyHourPrice: (json['happyHourPrice'] as num?)?.toInt(),
      tags: (json['tags'] as List<dynamic>).map((e) => e as String).toList(),
      isInStock: json['isInStock'] as bool,
      isVeg: json['isVeg'] as bool,
      isHappyHourItem: json['isHappyHourItem'] as bool,
    );

Map<String, dynamic> _$MenuItemModelToJson(MenuItemModel instance) {
  final val = <String, dynamic>{
    'restaurantId': <String, dynamic>{
      'restaurantName': instance.restaurantInfo.restaurantName,
    },
    'options': instance.options.toJson(),
    'outletId': instance.outletInfo.toJson(),
    'categoryId': instance.categoryId,
    'cuisines': instance.cuisines,
    'itemName': instance.itemName,
    'status': instance.status,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('itemDescription', instance.itemDescription);
  writeNotNull('itemImageUrl', instance.itemImageUrl);
  val['pricing'] = instance.pricing
      .map((e) => <String, dynamic>{
            'discountPercent': e.discountPercent,
            'isActive': e.isActive,
            'price': e.price,
          })
      .toList();
  val['reviews'] = instance.reviews
      .map((e) => <String, dynamic>{
            'rating': e.rating,
            'userId': e.userId,
          })
      .toList();
  writeNotNull('Rating', instance.rating);
  writeNotNull('happyHourPrice', instance.happyHourPrice);
  val['tags'] = instance.tags;
  val['isInStock'] = instance.isInStock;
  val['isVeg'] = instance.isVeg;
  val['isHappyHourItem'] = instance.isHappyHourItem;
  return val;
}

$Rec _$recordConvert<$Rec>(
  Object? value,
  $Rec Function(Map) convert,
) =>
    convert(value as Map<String, dynamic>);

OptionsModel _$OptionsModelFromJson(Map<String, dynamic> json) => OptionsModel(
      id: json['_id'] as String,
      choices: (json['choices'] as List<dynamic>)
          .map((e) => ChoiceModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      addons: (json['addons'] as List<dynamic>)
          .map((e) => Addons.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$OptionsModelToJson(OptionsModel instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'choices': instance.choices.map((e) => e.toJson()).toList(),
      'addons': instance.addons.map((e) => e.toJson()).toList(),
    };
