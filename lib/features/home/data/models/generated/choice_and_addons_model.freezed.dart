// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../choice_and_addons_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ChoiceModel {
  @JsonKey(name: '_id')
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  bool get isRequired => throw _privateConstructorUsedError;
  @JsonKey(name: 'choiceDetails')
  List<({int additionalPrice, bool isDefault, String name})> get details =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChoiceModelCopyWith<ChoiceModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChoiceModelCopyWith<$Res> {
  factory $ChoiceModelCopyWith(
          ChoiceModel value, $Res Function(ChoiceModel) then) =
      _$ChoiceModelCopyWithImpl<$Res, ChoiceModel>;
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String id,
      String name,
      bool isRequired,
      @JsonKey(name: 'choiceDetails')
      List<({int additionalPrice, bool isDefault, String name})> details});
}

/// @nodoc
class _$ChoiceModelCopyWithImpl<$Res, $Val extends ChoiceModel>
    implements $ChoiceModelCopyWith<$Res> {
  _$ChoiceModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? isRequired = null,
    Object? details = null,
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
      isRequired: null == isRequired
          ? _value.isRequired
          : isRequired // ignore: cast_nullable_to_non_nullable
              as bool,
      details: null == details
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as List<({int additionalPrice, bool isDefault, String name})>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChoiceModelImplCopyWith<$Res>
    implements $ChoiceModelCopyWith<$Res> {
  factory _$$ChoiceModelImplCopyWith(
          _$ChoiceModelImpl value, $Res Function(_$ChoiceModelImpl) then) =
      __$$ChoiceModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String id,
      String name,
      bool isRequired,
      @JsonKey(name: 'choiceDetails')
      List<({int additionalPrice, bool isDefault, String name})> details});
}

/// @nodoc
class __$$ChoiceModelImplCopyWithImpl<$Res>
    extends _$ChoiceModelCopyWithImpl<$Res, _$ChoiceModelImpl>
    implements _$$ChoiceModelImplCopyWith<$Res> {
  __$$ChoiceModelImplCopyWithImpl(
      _$ChoiceModelImpl _value, $Res Function(_$ChoiceModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? isRequired = null,
    Object? details = null,
  }) {
    return _then(_$ChoiceModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      isRequired: null == isRequired
          ? _value.isRequired
          : isRequired // ignore: cast_nullable_to_non_nullable
              as bool,
      details: null == details
          ? _value._details
          : details // ignore: cast_nullable_to_non_nullable
              as List<({int additionalPrice, bool isDefault, String name})>,
    ));
  }
}

/// @nodoc

class _$ChoiceModelImpl extends _ChoiceModel {
  const _$ChoiceModelImpl(
      {@JsonKey(name: '_id') required this.id,
      required this.name,
      this.isRequired = true,
      @JsonKey(name: 'choiceDetails')
      final List<({int additionalPrice, bool isDefault, String name})> details =
          const <({bool isDefault, int additionalPrice, String name})>[]})
      : _details = details,
        super._();

  @override
  @JsonKey(name: '_id')
  final String id;
  @override
  final String name;
  @override
  @JsonKey()
  final bool isRequired;
  final List<({int additionalPrice, bool isDefault, String name})> _details;
  @override
  @JsonKey(name: 'choiceDetails')
  List<({int additionalPrice, bool isDefault, String name})> get details {
    if (_details is EqualUnmodifiableListView) return _details;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_details);
  }

  @override
  String toString() {
    return 'ChoiceModel(id: $id, name: $name, isRequired: $isRequired, details: $details)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChoiceModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.isRequired, isRequired) ||
                other.isRequired == isRequired) &&
            const DeepCollectionEquality().equals(other._details, _details));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, name, isRequired,
      const DeepCollectionEquality().hash(_details));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChoiceModelImplCopyWith<_$ChoiceModelImpl> get copyWith =>
      __$$ChoiceModelImplCopyWithImpl<_$ChoiceModelImpl>(this, _$identity);
}

abstract class _ChoiceModel extends ChoiceModel {
  const factory _ChoiceModel(
      {@JsonKey(name: '_id') required final String id,
      required final String name,
      final bool isRequired,
      @JsonKey(name: 'choiceDetails')
      final List<({int additionalPrice, bool isDefault, String name})>
          details}) = _$ChoiceModelImpl;
  const _ChoiceModel._() : super._();

  @override
  @JsonKey(name: '_id')
  String get id;
  @override
  String get name;
  @override
  bool get isRequired;
  @override
  @JsonKey(name: 'choiceDetails')
  List<({int additionalPrice, bool isDefault, String name})> get details;
  @override
  @JsonKey(ignore: true)
  _$$ChoiceModelImplCopyWith<_$ChoiceModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$Addons {
  @JsonKey(name: '_id')
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get additionalPrice => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddonsCopyWith<Addons> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddonsCopyWith<$Res> {
  factory $AddonsCopyWith(Addons value, $Res Function(Addons) then) =
      _$AddonsCopyWithImpl<$Res, Addons>;
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String id, String name, int additionalPrice});
}

/// @nodoc
class _$AddonsCopyWithImpl<$Res, $Val extends Addons>
    implements $AddonsCopyWith<$Res> {
  _$AddonsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? additionalPrice = null,
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
      additionalPrice: null == additionalPrice
          ? _value.additionalPrice
          : additionalPrice // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AddonsImplCopyWith<$Res> implements $AddonsCopyWith<$Res> {
  factory _$$AddonsImplCopyWith(
          _$AddonsImpl value, $Res Function(_$AddonsImpl) then) =
      __$$AddonsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String id, String name, int additionalPrice});
}

/// @nodoc
class __$$AddonsImplCopyWithImpl<$Res>
    extends _$AddonsCopyWithImpl<$Res, _$AddonsImpl>
    implements _$$AddonsImplCopyWith<$Res> {
  __$$AddonsImplCopyWithImpl(
      _$AddonsImpl _value, $Res Function(_$AddonsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? additionalPrice = null,
  }) {
    return _then(_$AddonsImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      additionalPrice: null == additionalPrice
          ? _value.additionalPrice
          : additionalPrice // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$AddonsImpl extends _Addons {
  const _$AddonsImpl(
      {@JsonKey(name: '_id') required this.id,
      required this.name,
      this.additionalPrice = 0})
      : super._();

  @override
  @JsonKey(name: '_id')
  final String id;
  @override
  final String name;
  @override
  @JsonKey()
  final int additionalPrice;

  @override
  String toString() {
    return 'Addons(id: $id, name: $name, additionalPrice: $additionalPrice)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddonsImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.additionalPrice, additionalPrice) ||
                other.additionalPrice == additionalPrice));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, name, additionalPrice);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddonsImplCopyWith<_$AddonsImpl> get copyWith =>
      __$$AddonsImplCopyWithImpl<_$AddonsImpl>(this, _$identity);
}

abstract class _Addons extends Addons {
  const factory _Addons(
      {@JsonKey(name: '_id') required final String id,
      required final String name,
      final int additionalPrice}) = _$AddonsImpl;
  const _Addons._() : super._();

  @override
  @JsonKey(name: '_id')
  String get id;
  @override
  String get name;
  @override
  int get additionalPrice;
  @override
  @JsonKey(ignore: true)
  _$$AddonsImplCopyWith<_$AddonsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
