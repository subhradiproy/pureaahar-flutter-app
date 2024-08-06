// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../restaurant_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RestaurantModel _$RestaurantModelFromJson(Map<String, dynamic> json) =>
    RestaurantModel(
      id: json['restaurantId'] as String,
      name: json['restaurantName'] as String,
      description: json['description'] as String?,
      nearestOutlet: json['nearestOutlet'] == null
          ? null
          : OutletModel.fromJson(json['nearestOutlet'] as Map<String, dynamic>),
      serviceableOutlets: (json['serviceableOutlets'] as List<dynamic>)
          .map((e) => OutletModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$RestaurantModelToJson(RestaurantModel instance) {
  final val = <String, dynamic>{
    'restaurantId': instance.id,
    'restaurantName': instance.name,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('description', instance.description);
  writeNotNull('nearestOutlet', instance.nearestOutlet?.toJson());
  val['serviceableOutlets'] =
      instance.serviceableOutlets.map((e) => e.toJson()).toList();
  return val;
}

OutletModel _$OutletModelFromJson(Map<String, dynamic> json) => OutletModel(
      id: json['restaurantId'] as String,
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
      certifications: (json['certifications'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      menuSections: (json['menuSections'] as List<dynamic>)
          .map((e) => MenuSectionModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      isOpened: json['isOpened'] as bool,
      rating: json['rating'] as String?,
      ratingCount: (json['ratingCount'] as num?)?.toInt(),
      distanceDelta: (json['distanceDelta'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$OutletModelToJson(OutletModel instance) {
  final val = <String, dynamic>{
    'restaurantId': instance.id,
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
    'certifications': instance.certifications,
    'menuSections': instance.menuSections.map((e) => e.toJson()).toList(),
    'isOpened': instance.isOpened,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

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

MenuSectionModel _$MenuSectionModelFromJson(Map<String, dynamic> json) =>
    MenuSectionModel(
      category: json['category'] as String,
      position: (json['position'] as num).toInt(),
      items: (json['items'] as List<dynamic>)
          .map((e) => _$recordConvert(
                e,
                ($jsonValue) => (
                  itemId: $jsonValue['itemId'] as String,
                  position: ($jsonValue['position'] as num).toInt(),
                ),
              ))
          .toList(),
    );

Map<String, dynamic> _$MenuSectionModelToJson(MenuSectionModel instance) =>
    <String, dynamic>{
      'category': instance.category,
      'position': instance.position,
      'items': instance.items
          .map((e) => <String, dynamic>{
                'itemId': e.itemId,
                'position': e.position,
              })
          .toList(),
    };
