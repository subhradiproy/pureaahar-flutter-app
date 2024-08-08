// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../brand_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BrandModel _$BrandModelFromJson(Map<String, dynamic> json) => BrandModel(
      restaurantId: _readId(json, 'restaurantId') as String,
      name: json['restaurantName'] as String,
      background: json['bg'] as String,
      logo: json['logo'] as String?,
      description: json['description'] as String?,
      nearestOutlet: json['nearestOutlet'] == null
          ? null
          : OutletModel.fromJson(json['nearestOutlet'] as Map<String, dynamic>),
      serviceableOutlets: (json['serviceableOutlets'] as List<dynamic>?)
          ?.map((e) => OutletModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$BrandModelToJson(BrandModel instance) {
  final val = <String, dynamic>{
    'restaurantId': instance.restaurantId,
    'restaurantName': instance.name,
    'bg': instance.background,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('logo', instance.logo);
  writeNotNull('description', instance.description);
  writeNotNull('nearestOutlet', instance.nearestOutlet?.toJson());
  writeNotNull('serviceableOutlets',
      instance.serviceableOutlets?.map((e) => e.toJson()).toList());
  return val;
}

OutletModel _$OutletModelFromJson(Map<String, dynamic> json) => OutletModel(
      id: json['_id'] as String,
      location: _$recordConvert(
        json['outletLocation'],
        ($jsonValue) => (
          distance: ($jsonValue['distance'] as num).toDouble(),
          latitude: ($jsonValue['latitude'] as num).toDouble(),
          longitude: ($jsonValue['longitude'] as num).toDouble(),
        ),
      ),
      outletAddress: json['outletAddress'] as String,
      timing: _$recordConvert(
        json['timing'],
        ($jsonValue) => (
          fromTime: const TimeOfDayConvertor.twentyFourHour()
              .fromJson($jsonValue['fromTime'] as String),
          toTime: const TimeOfDayConvertor.twentyFourHour()
              .fromJson($jsonValue['toTime'] as String),
        ),
      ),
      isAcceptingOrder: json['acceptingOrder'] as bool? ?? false,
      menuSections: json['menuSections'] == null
          ? []
          : _menuFromJson(json['menuSections'] as List),
      brand: _parseBrand(json['restaurantId']),
      certifications: (json['certifications'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      isOpened: json['isOpened'] as bool,
      rating: json['rating'] as String?,
      ratingCount: (json['ratingCount'] as num?)?.toInt(),
      distanceDelta: (json['distanceDelta'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$OutletModelToJson(OutletModel instance) {
  final val = <String, dynamic>{
    '_id': instance.id,
    'outletLocation': <String, dynamic>{
      'distance': instance.location.distance,
      'latitude': instance.location.latitude,
      'longitude': instance.location.longitude,
    },
    'outletAddress': instance.outletAddress,
    'timing': <String, dynamic>{
      'fromTime': const TimeOfDayConvertor.twentyFourHour()
          .toJson(instance.timing.fromTime),
      'toTime': const TimeOfDayConvertor.twentyFourHour()
          .toJson(instance.timing.toTime),
    },
    'acceptingOrder': instance.isAcceptingOrder,
    'menuSections': instance.menuSections.map((e) => e.toJson()).toList(),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('restaurantId', instance.brand?.toJson());
  val['certifications'] = instance.certifications;
  val['isOpened'] = instance.isOpened;
  writeNotNull('rating', instance.rating);
  writeNotNull('ratingCount', instance.ratingCount);
  writeNotNull('distanceDelta', instance.distanceDelta);
  return val;
}

$Rec _$recordConvert<$Rec>(
  Object? value,
  $Rec Function(Map) convert,
) =>
    convert(value as Map<String, dynamic>);

MenuSectionCategoryModel _$MenuSectionCategoryModelFromJson(
        Map<String, dynamic> json) =>
    MenuSectionCategoryModel(
      id: json['_id'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      outletId: json['outletId'] as String,
      categoryName: json['categoryName'] as String,
      categoryDescription: json['categoryDescription'] as String,
      isActive: json['isActive'] as bool? ?? true,
    );

Map<String, dynamic> _$MenuSectionCategoryModelToJson(
        MenuSectionCategoryModel instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      'outletId': instance.outletId,
      'categoryName': instance.categoryName,
      'categoryDescription': instance.categoryDescription,
      'isActive': instance.isActive,
    };

MenuSectionModel _$MenuSectionModelFromJson(Map<String, dynamic> json) =>
    MenuSectionModel(
      id: json['_id'] as String,
      category: MenuSectionCategoryModel.fromJson(
          json['category'] as Map<String, dynamic>),
      items: (json['items'] as List<dynamic>?)
              ?.map((e) => _$recordConvert(
                    e,
                    ($jsonValue) => (
                      itemId: MenuItemModel.fromJson(
                          $jsonValue['itemId'] as Map<String, dynamic>),
                      position: ($jsonValue['position'] as num).toInt(),
                    ),
                  ))
              .toList() ??
          [],
      position: (json['position'] as num).toInt(),
    );

Map<String, dynamic> _$MenuSectionModelToJson(MenuSectionModel instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'category': instance.category.toJson(),
      'items': instance.items
          .map((e) => <String, dynamic>{
                'itemId': e.itemId.toJson(),
                'position': e.position,
              })
          .toList(),
      'position': instance.position,
    };
