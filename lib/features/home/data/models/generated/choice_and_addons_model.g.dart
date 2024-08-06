// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../choice_and_addons_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Choice _$ChoiceFromJson(Map<String, dynamic> json) => Choice(
      id: json['_id'] as String,
      name: json['name'] as String,
      isRequired: json['isRequired'] as bool,
      details: (json['choiceDetails'] as List<dynamic>)
          .map((e) => _$recordConvert(
                e,
                ($jsonValue) => (
                  additionalPrice:
                      ($jsonValue['additionalPrice'] as num).toInt(),
                  isDefault: $jsonValue['isDefault'] as bool,
                  name: $jsonValue['name'] as String,
                ),
              ))
          .toList(),
    );

Map<String, dynamic> _$ChoiceToJson(Choice instance) => <String, dynamic>{
      '_id': instance.id,
      'name': instance.name,
      'isRequired': instance.isRequired,
      'choiceDetails': instance.details
          .map((e) => <String, dynamic>{
                'additionalPrice': e.additionalPrice,
                'isDefault': e.isDefault,
                'name': e.name,
              })
          .toList(),
    };

$Rec _$recordConvert<$Rec>(
  Object? value,
  $Rec Function(Map) convert,
) =>
    convert(value as Map<String, dynamic>);

Addons _$AddonsFromJson(Map<String, dynamic> json) => Addons(
      id: json['_id'] as String,
      name: json['name'] as String,
      additionalPrice: (json['additionalPrice'] as num).toInt(),
    );

Map<String, dynamic> _$AddonsToJson(Addons instance) => <String, dynamic>{
      '_id': instance.id,
      'name': instance.name,
      'additionalPrice': instance.additionalPrice,
    };
