// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../cuisine_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CuisineModel {
  @JsonKey(name: '_id')
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'cuisineImageUrl')
  String get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CuisineModelCopyWith<CuisineModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CuisineModelCopyWith<$Res> {
  factory $CuisineModelCopyWith(
          CuisineModel value, $Res Function(CuisineModel) then) =
      _$CuisineModelCopyWithImpl<$Res, CuisineModel>;
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String id,
      String name,
      @JsonKey(name: 'cuisineImageUrl') String url});
}

/// @nodoc
class _$CuisineModelCopyWithImpl<$Res, $Val extends CuisineModel>
    implements $CuisineModelCopyWith<$Res> {
  _$CuisineModelCopyWithImpl(this._value, this._then);

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
abstract class _$$CuisineModelImplCopyWith<$Res>
    implements $CuisineModelCopyWith<$Res> {
  factory _$$CuisineModelImplCopyWith(
          _$CuisineModelImpl value, $Res Function(_$CuisineModelImpl) then) =
      __$$CuisineModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String id,
      String name,
      @JsonKey(name: 'cuisineImageUrl') String url});
}

/// @nodoc
class __$$CuisineModelImplCopyWithImpl<$Res>
    extends _$CuisineModelCopyWithImpl<$Res, _$CuisineModelImpl>
    implements _$$CuisineModelImplCopyWith<$Res> {
  __$$CuisineModelImplCopyWithImpl(
      _$CuisineModelImpl _value, $Res Function(_$CuisineModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? url = null,
  }) {
    return _then(_$CuisineModelImpl(
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
class _$CuisineModelImpl extends _CuisineModel {
  const _$CuisineModelImpl(
      {@JsonKey(name: '_id') required this.id,
      required this.name,
      @JsonKey(name: 'cuisineImageUrl') required this.url})
      : super._();

  @override
  @JsonKey(name: '_id')
  final String id;
  @override
  final String name;
  @override
  @JsonKey(name: 'cuisineImageUrl')
  final String url;

  @override
  String toString() {
    return 'CuisineModel(id: $id, name: $name, url: $url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CuisineModelImpl &&
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
  _$$CuisineModelImplCopyWith<_$CuisineModelImpl> get copyWith =>
      __$$CuisineModelImplCopyWithImpl<_$CuisineModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CuisineModelImplToJson(
      this,
    );
  }
}

abstract class _CuisineModel extends CuisineModel {
  const factory _CuisineModel(
          {@JsonKey(name: '_id') required final String id,
          required final String name,
          @JsonKey(name: 'cuisineImageUrl') required final String url}) =
      _$CuisineModelImpl;
  const _CuisineModel._() : super._();

  @override
  @JsonKey(name: '_id')
  String get id;
  @override
  String get name;
  @override
  @JsonKey(name: 'cuisineImageUrl')
  String get url;
  @override
  @JsonKey(ignore: true)
  _$$CuisineModelImplCopyWith<_$CuisineModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
