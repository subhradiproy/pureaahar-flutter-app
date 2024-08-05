// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../cuisine_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CuisineEntity {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get imageUrl => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CuisineEntityCopyWith<CuisineEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CuisineEntityCopyWith<$Res> {
  factory $CuisineEntityCopyWith(
          CuisineEntity value, $Res Function(CuisineEntity) then) =
      _$CuisineEntityCopyWithImpl<$Res, CuisineEntity>;
  @useResult
  $Res call({String id, String name, String imageUrl});
}

/// @nodoc
class _$CuisineEntityCopyWithImpl<$Res, $Val extends CuisineEntity>
    implements $CuisineEntityCopyWith<$Res> {
  _$CuisineEntityCopyWithImpl(this._value, this._then);

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
abstract class _$$CuisineEntityImplCopyWith<$Res>
    implements $CuisineEntityCopyWith<$Res> {
  factory _$$CuisineEntityImplCopyWith(
          _$CuisineEntityImpl value, $Res Function(_$CuisineEntityImpl) then) =
      __$$CuisineEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String name, String imageUrl});
}

/// @nodoc
class __$$CuisineEntityImplCopyWithImpl<$Res>
    extends _$CuisineEntityCopyWithImpl<$Res, _$CuisineEntityImpl>
    implements _$$CuisineEntityImplCopyWith<$Res> {
  __$$CuisineEntityImplCopyWithImpl(
      _$CuisineEntityImpl _value, $Res Function(_$CuisineEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? imageUrl = null,
  }) {
    return _then(_$CuisineEntityImpl(
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

class _$CuisineEntityImpl implements _CuisineEntity {
  const _$CuisineEntityImpl(
      {required this.id, required this.name, required this.imageUrl});

  @override
  final String id;
  @override
  final String name;
  @override
  final String imageUrl;

  @override
  String toString() {
    return 'CuisineEntity(id: $id, name: $name, imageUrl: $imageUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CuisineEntityImpl &&
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
  _$$CuisineEntityImplCopyWith<_$CuisineEntityImpl> get copyWith =>
      __$$CuisineEntityImplCopyWithImpl<_$CuisineEntityImpl>(this, _$identity);
}

abstract class _CuisineEntity implements CuisineEntity {
  const factory _CuisineEntity(
      {required final String id,
      required final String name,
      required final String imageUrl}) = _$CuisineEntityImpl;

  @override
  String get id;
  @override
  String get name;
  @override
  String get imageUrl;
  @override
  @JsonKey(ignore: true)
  _$$CuisineEntityImplCopyWith<_$CuisineEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
