// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../restaurant_banner_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RestaurantBannerModel {
  @JsonKey(name: '_id')
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'bannerImageUrl')
  String get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RestaurantBannerModelCopyWith<RestaurantBannerModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RestaurantBannerModelCopyWith<$Res> {
  factory $RestaurantBannerModelCopyWith(RestaurantBannerModel value,
          $Res Function(RestaurantBannerModel) then) =
      _$RestaurantBannerModelCopyWithImpl<$Res, RestaurantBannerModel>;
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String id,
      String name,
      @JsonKey(name: 'bannerImageUrl') String url});
}

/// @nodoc
class _$RestaurantBannerModelCopyWithImpl<$Res,
        $Val extends RestaurantBannerModel>
    implements $RestaurantBannerModelCopyWith<$Res> {
  _$RestaurantBannerModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? url = null,
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
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RestaurantBannerDTOImplCopyWith<$Res>
    implements $RestaurantBannerModelCopyWith<$Res> {
  factory _$$RestaurantBannerDTOImplCopyWith(_$RestaurantBannerDTOImpl value,
          $Res Function(_$RestaurantBannerDTOImpl) then) =
      __$$RestaurantBannerDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String id,
      String name,
      @JsonKey(name: 'bannerImageUrl') String url});
}

/// @nodoc
class __$$RestaurantBannerDTOImplCopyWithImpl<$Res>
    extends _$RestaurantBannerModelCopyWithImpl<$Res, _$RestaurantBannerDTOImpl>
    implements _$$RestaurantBannerDTOImplCopyWith<$Res> {
  __$$RestaurantBannerDTOImplCopyWithImpl(_$RestaurantBannerDTOImpl _value,
      $Res Function(_$RestaurantBannerDTOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? url = null,
  }) {
    return _then(_$RestaurantBannerDTOImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable(createFactory: false)
class _$RestaurantBannerDTOImpl implements _RestaurantBannerDTO {
  const _$RestaurantBannerDTOImpl(
      {@JsonKey(name: '_id') required this.id,
      required this.name,
      @JsonKey(name: 'bannerImageUrl') required this.url});

  @override
  @JsonKey(name: '_id')
  final String id;
  @override
  final String name;
  @override
  @JsonKey(name: 'bannerImageUrl')
  final String url;

  @override
  String toString() {
    return 'RestaurantBannerModel(id: $id, name: $name, url: $url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RestaurantBannerDTOImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RestaurantBannerDTOImplCopyWith<_$RestaurantBannerDTOImpl> get copyWith =>
      __$$RestaurantBannerDTOImplCopyWithImpl<_$RestaurantBannerDTOImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RestaurantBannerDTOImplToJson(
      this,
    );
  }
}

abstract class _RestaurantBannerDTO implements RestaurantBannerModel {
  const factory _RestaurantBannerDTO(
          {@JsonKey(name: '_id') required final String id,
          required final String name,
          @JsonKey(name: 'bannerImageUrl') required final String url}) =
      _$RestaurantBannerDTOImpl;

  @override
  @JsonKey(name: '_id')
  String get id;
  @override
  String get name;
  @override
  @JsonKey(name: 'bannerImageUrl')
  String get url;
  @override
  @JsonKey(ignore: true)
  _$$RestaurantBannerDTOImplCopyWith<_$RestaurantBannerDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
