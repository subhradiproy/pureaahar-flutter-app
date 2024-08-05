// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../restaurant_banner_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RestaurantBannerModel _$RestaurantBannerModelFromJson(
        Map<String, dynamic> json) =>
    RestaurantBannerModel(
      id: json['_id'] as String,
      name: json['name'] as String,
      url: json['bannerImageUrl'] as String,
    );

Map<String, dynamic> _$RestaurantBannerModelToJson(
        RestaurantBannerModel instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'name': instance.name,
      'bannerImageUrl': instance.url,
    };

Map<String, dynamic> _$$RestaurantBannerModelImplToJson(
        _$RestaurantBannerModelImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'name': instance.name,
      'bannerImageUrl': instance.url,
    };
