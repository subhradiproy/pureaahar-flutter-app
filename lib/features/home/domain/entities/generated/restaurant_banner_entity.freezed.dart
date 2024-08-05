// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../restaurant_banner_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RestaurantBannerEntity {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get imageUrl => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RestaurantBannerEntityCopyWith<RestaurantBannerEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RestaurantBannerEntityCopyWith<$Res> {
  factory $RestaurantBannerEntityCopyWith(RestaurantBannerEntity value,
          $Res Function(RestaurantBannerEntity) then) =
      _$RestaurantBannerEntityCopyWithImpl<$Res, RestaurantBannerEntity>;
  @useResult
  $Res call({String id, String name, String imageUrl});
}

/// @nodoc
class _$RestaurantBannerEntityCopyWithImpl<$Res,
        $Val extends RestaurantBannerEntity>
    implements $RestaurantBannerEntityCopyWith<$Res> {
  _$RestaurantBannerEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? imageUrl = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RestaurantBannerEntityImplCopyWith<$Res>
    implements $RestaurantBannerEntityCopyWith<$Res> {
  factory _$$RestaurantBannerEntityImplCopyWith(
          _$RestaurantBannerEntityImpl value,
          $Res Function(_$RestaurantBannerEntityImpl) then) =
      __$$RestaurantBannerEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String name, String imageUrl});
}

/// @nodoc
class __$$RestaurantBannerEntityImplCopyWithImpl<$Res>
    extends _$RestaurantBannerEntityCopyWithImpl<$Res,
        _$RestaurantBannerEntityImpl>
    implements _$$RestaurantBannerEntityImplCopyWith<$Res> {
  __$$RestaurantBannerEntityImplCopyWithImpl(
      _$RestaurantBannerEntityImpl _value,
      $Res Function(_$RestaurantBannerEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? imageUrl = null,
  }) {
    return _then(_$RestaurantBannerEntityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RestaurantBannerEntityImpl implements _RestaurantBannerEntity {
  const _$RestaurantBannerEntityImpl(
      {required this.id, required this.name, required this.imageUrl});

  @override
  final String id;
  @override
  final String name;
  @override
  final String imageUrl;

  @override
  String toString() {
    return 'RestaurantBannerEntity(id: $id, name: $name, imageUrl: $imageUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RestaurantBannerEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, name, imageUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RestaurantBannerEntityImplCopyWith<_$RestaurantBannerEntityImpl>
      get copyWith => __$$RestaurantBannerEntityImplCopyWithImpl<
          _$RestaurantBannerEntityImpl>(this, _$identity);
}

abstract class _RestaurantBannerEntity implements RestaurantBannerEntity {
  const factory _RestaurantBannerEntity(
      {required final String id,
      required final String name,
      required final String imageUrl}) = _$RestaurantBannerEntityImpl;

  @override
  String get id;
  @override
  String get name;
  @override
  String get imageUrl;
  @override
  @JsonKey(ignore: true)
  _$$RestaurantBannerEntityImplCopyWith<_$RestaurantBannerEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
