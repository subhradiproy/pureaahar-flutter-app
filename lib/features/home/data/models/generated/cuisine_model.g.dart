// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../cuisine_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CuisineModel _$CuisineModelFromJson(Map<String, dynamic> json) => CuisineModel(
      id: json['_id'] as String,
      name: json['name'] as String,
      url: json['cuisineImageUrl'] as String,
    );

Map<String, dynamic> _$CuisineModelToJson(CuisineModel instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'name': instance.name,
      'cuisineImageUrl': instance.url,
    };

Map<String, dynamic> _$$RestaurantBannerDTOImplToJson(
        _$RestaurantBannerDTOImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'name': instance.name,
      'cuisineImageUrl': instance.url,
    };
