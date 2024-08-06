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
mixin _$Cuisine {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get imageUrl => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CuisineCopyWith<Cuisine> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CuisineCopyWith<$Res> {
  factory $CuisineCopyWith(Cuisine value, $Res Function(Cuisine) then) =
      _$CuisineCopyWithImpl<$Res, Cuisine>;
  @useResult
  $Res call({String id, String name, String imageUrl});
}

/// @nodoc
class _$CuisineCopyWithImpl<$Res, $Val extends Cuisine>
    implements $CuisineCopyWith<$Res> {
  _$CuisineCopyWithImpl(this._value, this._then);

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
abstract class _$$CuisineImplCopyWith<$Res> implements $CuisineCopyWith<$Res> {
  factory _$$CuisineImplCopyWith(
          _$CuisineImpl value, $Res Function(_$CuisineImpl) then) =
      __$$CuisineImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String name, String imageUrl});
}

/// @nodoc
class __$$CuisineImplCopyWithImpl<$Res>
    extends _$CuisineCopyWithImpl<$Res, _$CuisineImpl>
    implements _$$CuisineImplCopyWith<$Res> {
  __$$CuisineImplCopyWithImpl(
      _$CuisineImpl _value, $Res Function(_$CuisineImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? imageUrl = null,
  }) {
    return _then(_$CuisineImpl(
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

class _$CuisineImpl implements _Cuisine {
  const _$CuisineImpl(
      {required this.id, required this.name, required this.imageUrl});

  @override
  final String id;
  @override
  final String name;
  @override
  final String imageUrl;

  @override
  String toString() {
    return 'Cuisine(id: $id, name: $name, imageUrl: $imageUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CuisineImpl &&
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
  _$$CuisineImplCopyWith<_$CuisineImpl> get copyWith =>
      __$$CuisineImplCopyWithImpl<_$CuisineImpl>(this, _$identity);
}

abstract class _Cuisine implements Cuisine {
  const factory _Cuisine(
      {required final String id,
      required final String name,
      required final String imageUrl}) = _$CuisineImpl;

  @override
  String get id;
  @override
  String get name;
  @override
  String get imageUrl;
  @override
  @JsonKey(ignore: true)
  _$$CuisineImplCopyWith<_$CuisineImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
