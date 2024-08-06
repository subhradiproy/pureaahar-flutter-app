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
mixin _$RestaurantBanner {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get imageUrl => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RestaurantBannerCopyWith<RestaurantBanner> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RestaurantBannerCopyWith<$Res> {
  factory $RestaurantBannerCopyWith(
          RestaurantBanner value, $Res Function(RestaurantBanner) then) =
      _$RestaurantBannerCopyWithImpl<$Res, RestaurantBanner>;
  @useResult
  $Res call({String id, String name, String imageUrl});
}

/// @nodoc
class _$RestaurantBannerCopyWithImpl<$Res, $Val extends RestaurantBanner>
    implements $RestaurantBannerCopyWith<$Res> {
  _$RestaurantBannerCopyWithImpl(this._value, this._then);

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
abstract class _$$RestaurantBannerImplCopyWith<$Res>
    implements $RestaurantBannerCopyWith<$Res> {
  factory _$$RestaurantBannerImplCopyWith(_$RestaurantBannerImpl value,
          $Res Function(_$RestaurantBannerImpl) then) =
      __$$RestaurantBannerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String name, String imageUrl});
}

/// @nodoc
class __$$RestaurantBannerImplCopyWithImpl<$Res>
    extends _$RestaurantBannerCopyWithImpl<$Res, _$RestaurantBannerImpl>
    implements _$$RestaurantBannerImplCopyWith<$Res> {
  __$$RestaurantBannerImplCopyWithImpl(_$RestaurantBannerImpl _value,
      $Res Function(_$RestaurantBannerImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? imageUrl = null,
  }) {
    return _then(_$RestaurantBannerImpl(
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

class _$RestaurantBannerImpl implements _RestaurantBanner {
  const _$RestaurantBannerImpl(
      {required this.id, required this.name, required this.imageUrl});

  @override
  final String id;
  @override
  final String name;
  @override
  final String imageUrl;

  @override
  String toString() {
    return 'RestaurantBanner(id: $id, name: $name, imageUrl: $imageUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RestaurantBannerImpl &&
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
  _$$RestaurantBannerImplCopyWith<_$RestaurantBannerImpl> get copyWith =>
      __$$RestaurantBannerImplCopyWithImpl<_$RestaurantBannerImpl>(
          this, _$identity);
}

abstract class _RestaurantBanner implements RestaurantBanner {
  const factory _RestaurantBanner(
      {required final String id,
      required final String name,
      required final String imageUrl}) = _$RestaurantBannerImpl;

  @override
  String get id;
  @override
  String get name;
  @override
  String get imageUrl;
  @override
  @JsonKey(ignore: true)
  _$$RestaurantBannerImplCopyWith<_$RestaurantBannerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
