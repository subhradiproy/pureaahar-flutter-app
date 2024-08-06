// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../restaurant_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RestaurantModel {
  String get restaurantId => throw _privateConstructorUsedError;
  @JsonKey(name: 'restaurantName')
  String get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  OutletModel? get nearestOutlet => throw _privateConstructorUsedError;
  List<OutletModel> get serviceableOutlets =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RestaurantModelCopyWith<RestaurantModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RestaurantModelCopyWith<$Res> {
  factory $RestaurantModelCopyWith(
          RestaurantModel value, $Res Function(RestaurantModel) then) =
      _$RestaurantModelCopyWithImpl<$Res, RestaurantModel>;
  @useResult
  $Res call(
      {String restaurantId,
      @JsonKey(name: 'restaurantName') String name,
      String? description,
      OutletModel? nearestOutlet,
      List<OutletModel> serviceableOutlets});

  $OutletModelCopyWith<$Res>? get nearestOutlet;
}

/// @nodoc
class _$RestaurantModelCopyWithImpl<$Res, $Val extends RestaurantModel>
    implements $RestaurantModelCopyWith<$Res> {
  _$RestaurantModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? restaurantId = null,
    Object? name = null,
    Object? description = freezed,
    Object? nearestOutlet = freezed,
    Object? serviceableOutlets = null,
  }) {
    return _then(_value.copyWith(
      restaurantId: null == restaurantId
          ? _value.restaurantId
          : restaurantId // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      nearestOutlet: freezed == nearestOutlet
          ? _value.nearestOutlet
          : nearestOutlet // ignore: cast_nullable_to_non_nullable
              as OutletModel?,
      serviceableOutlets: null == serviceableOutlets
          ? _value.serviceableOutlets
          : serviceableOutlets // ignore: cast_nullable_to_non_nullable
              as List<OutletModel>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $OutletModelCopyWith<$Res>? get nearestOutlet {
    if (_value.nearestOutlet == null) {
      return null;
    }

    return $OutletModelCopyWith<$Res>(_value.nearestOutlet!, (value) {
      return _then(_value.copyWith(nearestOutlet: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RestaurantModelImplCopyWith<$Res>
    implements $RestaurantModelCopyWith<$Res> {
  factory _$$RestaurantModelImplCopyWith(_$RestaurantModelImpl value,
          $Res Function(_$RestaurantModelImpl) then) =
      __$$RestaurantModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String restaurantId,
      @JsonKey(name: 'restaurantName') String name,
      String? description,
      OutletModel? nearestOutlet,
      List<OutletModel> serviceableOutlets});

  @override
  $OutletModelCopyWith<$Res>? get nearestOutlet;
}

/// @nodoc
class __$$RestaurantModelImplCopyWithImpl<$Res>
    extends _$RestaurantModelCopyWithImpl<$Res, _$RestaurantModelImpl>
    implements _$$RestaurantModelImplCopyWith<$Res> {
  __$$RestaurantModelImplCopyWithImpl(
      _$RestaurantModelImpl _value, $Res Function(_$RestaurantModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? restaurantId = null,
    Object? name = null,
    Object? description = freezed,
    Object? nearestOutlet = freezed,
    Object? serviceableOutlets = null,
  }) {
    return _then(_$RestaurantModelImpl(
      restaurantId: null == restaurantId
          ? _value.restaurantId
          : restaurantId // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      nearestOutlet: freezed == nearestOutlet
          ? _value.nearestOutlet
          : nearestOutlet // ignore: cast_nullable_to_non_nullable
              as OutletModel?,
      serviceableOutlets: null == serviceableOutlets
          ? _value._serviceableOutlets
          : serviceableOutlets // ignore: cast_nullable_to_non_nullable
              as List<OutletModel>,
    ));
  }
}

/// @nodoc

class _$RestaurantModelImpl extends _RestaurantModel {
  const _$RestaurantModelImpl(
      {required this.restaurantId,
      @JsonKey(name: 'restaurantName') required this.name,
      this.description,
      this.nearestOutlet,
      final List<OutletModel> serviceableOutlets = const <OutletModel>[]})
      : _serviceableOutlets = serviceableOutlets,
        super._();

  @override
  final String restaurantId;
  @override
  @JsonKey(name: 'restaurantName')
  final String name;
  @override
  final String? description;
  @override
  final OutletModel? nearestOutlet;
  final List<OutletModel> _serviceableOutlets;
  @override
  @JsonKey()
  List<OutletModel> get serviceableOutlets {
    if (_serviceableOutlets is EqualUnmodifiableListView)
      return _serviceableOutlets;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_serviceableOutlets);
  }

  @override
  String toString() {
    return 'RestaurantModel(restaurantId: $restaurantId, name: $name, description: $description, nearestOutlet: $nearestOutlet, serviceableOutlets: $serviceableOutlets)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RestaurantModelImpl &&
            (identical(other.restaurantId, restaurantId) ||
                other.restaurantId == restaurantId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.nearestOutlet, nearestOutlet) ||
                other.nearestOutlet == nearestOutlet) &&
            const DeepCollectionEquality()
                .equals(other._serviceableOutlets, _serviceableOutlets));
  }

  @override
  int get hashCode => Object.hash(runtimeType, restaurantId, name, description,
      nearestOutlet, const DeepCollectionEquality().hash(_serviceableOutlets));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RestaurantModelImplCopyWith<_$RestaurantModelImpl> get copyWith =>
      __$$RestaurantModelImplCopyWithImpl<_$RestaurantModelImpl>(
          this, _$identity);
}

abstract class _RestaurantModel extends RestaurantModel {
  const factory _RestaurantModel(
      {required final String restaurantId,
      @JsonKey(name: 'restaurantName') required final String name,
      final String? description,
      final OutletModel? nearestOutlet,
      final List<OutletModel> serviceableOutlets}) = _$RestaurantModelImpl;
  const _RestaurantModel._() : super._();

  @override
  String get restaurantId;
  @override
  @JsonKey(name: 'restaurantName')
  String get name;
  @override
  String? get description;
  @override
  OutletModel? get nearestOutlet;
  @override
  List<OutletModel> get serviceableOutlets;
  @override
  @JsonKey(ignore: true)
  _$$RestaurantModelImplCopyWith<_$RestaurantModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$OutletModel {
  @JsonKey(name: '_id')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'outletLocation')
  ({double distance, double latitude, double longitude}) get location =>
      throw _privateConstructorUsedError;
  String get outletAddress => throw _privateConstructorUsedError;
  @TimeOfDayConvertor.twentyFourHour()
  ({TimeOfDay fromTime, TimeOfDay toTime}) get timing =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'acceptingOrder', defaultValue: false)
  bool get isAcceptingOrder => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: <MenuSectionModel>[], fromJson: _menuFromJson)
  List<MenuSectionModel> get menuSections => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: <String>[])
  List<String> get certifications => throw _privateConstructorUsedError;
  bool get isOpened => throw _privateConstructorUsedError;
  String? get rating => throw _privateConstructorUsedError;
  int? get ratingCount => throw _privateConstructorUsedError;
  double? get distanceDelta => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OutletModelCopyWith<OutletModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OutletModelCopyWith<$Res> {
  factory $OutletModelCopyWith(
          OutletModel value, $Res Function(OutletModel) then) =
      _$OutletModelCopyWithImpl<$Res, OutletModel>;
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String id,
      @JsonKey(name: 'outletLocation')
      ({double distance, double latitude, double longitude}) location,
      String outletAddress,
      @TimeOfDayConvertor.twentyFourHour()
      ({TimeOfDay fromTime, TimeOfDay toTime}) timing,
      @JsonKey(name: 'acceptingOrder', defaultValue: false)
      bool isAcceptingOrder,
      @JsonKey(defaultValue: <MenuSectionModel>[], fromJson: _menuFromJson)
      List<MenuSectionModel> menuSections,
      @JsonKey(defaultValue: <String>[]) List<String> certifications,
      bool isOpened,
      String? rating,
      int? ratingCount,
      double? distanceDelta});
}

/// @nodoc
class _$OutletModelCopyWithImpl<$Res, $Val extends OutletModel>
    implements $OutletModelCopyWith<$Res> {
  _$OutletModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? location = null,
    Object? outletAddress = null,
    Object? timing = null,
    Object? isAcceptingOrder = null,
    Object? menuSections = null,
    Object? certifications = null,
    Object? isOpened = null,
    Object? rating = freezed,
    Object? ratingCount = freezed,
    Object? distanceDelta = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as ({double distance, double latitude, double longitude}),
      outletAddress: null == outletAddress
          ? _value.outletAddress
          : outletAddress // ignore: cast_nullable_to_non_nullable
              as String,
      timing: null == timing
          ? _value.timing
          : timing // ignore: cast_nullable_to_non_nullable
              as ({TimeOfDay fromTime, TimeOfDay toTime}),
      isAcceptingOrder: null == isAcceptingOrder
          ? _value.isAcceptingOrder
          : isAcceptingOrder // ignore: cast_nullable_to_non_nullable
              as bool,
      menuSections: null == menuSections
          ? _value.menuSections
          : menuSections // ignore: cast_nullable_to_non_nullable
              as List<MenuSectionModel>,
      certifications: null == certifications
          ? _value.certifications
          : certifications // ignore: cast_nullable_to_non_nullable
              as List<String>,
      isOpened: null == isOpened
          ? _value.isOpened
          : isOpened // ignore: cast_nullable_to_non_nullable
              as bool,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as String?,
      ratingCount: freezed == ratingCount
          ? _value.ratingCount
          : ratingCount // ignore: cast_nullable_to_non_nullable
              as int?,
      distanceDelta: freezed == distanceDelta
          ? _value.distanceDelta
          : distanceDelta // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OutletModelImplCopyWith<$Res>
    implements $OutletModelCopyWith<$Res> {
  factory _$$OutletModelImplCopyWith(
          _$OutletModelImpl value, $Res Function(_$OutletModelImpl) then) =
      __$$OutletModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String id,
      @JsonKey(name: 'outletLocation')
      ({double distance, double latitude, double longitude}) location,
      String outletAddress,
      @TimeOfDayConvertor.twentyFourHour()
      ({TimeOfDay fromTime, TimeOfDay toTime}) timing,
      @JsonKey(name: 'acceptingOrder', defaultValue: false)
      bool isAcceptingOrder,
      @JsonKey(defaultValue: <MenuSectionModel>[], fromJson: _menuFromJson)
      List<MenuSectionModel> menuSections,
      @JsonKey(defaultValue: <String>[]) List<String> certifications,
      bool isOpened,
      String? rating,
      int? ratingCount,
      double? distanceDelta});
}

/// @nodoc
class __$$OutletModelImplCopyWithImpl<$Res>
    extends _$OutletModelCopyWithImpl<$Res, _$OutletModelImpl>
    implements _$$OutletModelImplCopyWith<$Res> {
  __$$OutletModelImplCopyWithImpl(
      _$OutletModelImpl _value, $Res Function(_$OutletModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? location = null,
    Object? outletAddress = null,
    Object? timing = null,
    Object? isAcceptingOrder = null,
    Object? menuSections = null,
    Object? certifications = null,
    Object? isOpened = null,
    Object? rating = freezed,
    Object? ratingCount = freezed,
    Object? distanceDelta = freezed,
  }) {
    return _then(_$OutletModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as ({double distance, double latitude, double longitude}),
      outletAddress: null == outletAddress
          ? _value.outletAddress
          : outletAddress // ignore: cast_nullable_to_non_nullable
              as String,
      timing: null == timing
          ? _value.timing
          : timing // ignore: cast_nullable_to_non_nullable
              as ({TimeOfDay fromTime, TimeOfDay toTime}),
      isAcceptingOrder: null == isAcceptingOrder
          ? _value.isAcceptingOrder
          : isAcceptingOrder // ignore: cast_nullable_to_non_nullable
              as bool,
      menuSections: null == menuSections
          ? _value._menuSections
          : menuSections // ignore: cast_nullable_to_non_nullable
              as List<MenuSectionModel>,
      certifications: null == certifications
          ? _value._certifications
          : certifications // ignore: cast_nullable_to_non_nullable
              as List<String>,
      isOpened: null == isOpened
          ? _value.isOpened
          : isOpened // ignore: cast_nullable_to_non_nullable
              as bool,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as String?,
      ratingCount: freezed == ratingCount
          ? _value.ratingCount
          : ratingCount // ignore: cast_nullable_to_non_nullable
              as int?,
      distanceDelta: freezed == distanceDelta
          ? _value.distanceDelta
          : distanceDelta // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc

class _$OutletModelImpl extends _OutletModel {
  const _$OutletModelImpl(
      {@JsonKey(name: '_id') required this.id,
      @JsonKey(name: 'outletLocation') required this.location,
      required this.outletAddress,
      @TimeOfDayConvertor.twentyFourHour() required this.timing,
      @JsonKey(name: 'acceptingOrder', defaultValue: false)
      required this.isAcceptingOrder,
      @JsonKey(defaultValue: <MenuSectionModel>[], fromJson: _menuFromJson)
      required final List<MenuSectionModel> menuSections,
      @JsonKey(defaultValue: <String>[])
      final List<String> certifications = const <String>[],
      this.isOpened = false,
      this.rating,
      this.ratingCount,
      this.distanceDelta})
      : _menuSections = menuSections,
        _certifications = certifications,
        super._();

  @override
  @JsonKey(name: '_id')
  final String id;
  @override
  @JsonKey(name: 'outletLocation')
  final ({double distance, double latitude, double longitude}) location;
  @override
  final String outletAddress;
  @override
  @TimeOfDayConvertor.twentyFourHour()
  final ({TimeOfDay fromTime, TimeOfDay toTime}) timing;
  @override
  @JsonKey(name: 'acceptingOrder', defaultValue: false)
  final bool isAcceptingOrder;
  final List<MenuSectionModel> _menuSections;
  @override
  @JsonKey(defaultValue: <MenuSectionModel>[], fromJson: _menuFromJson)
  List<MenuSectionModel> get menuSections {
    if (_menuSections is EqualUnmodifiableListView) return _menuSections;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_menuSections);
  }

  final List<String> _certifications;
  @override
  @JsonKey(defaultValue: <String>[])
  List<String> get certifications {
    if (_certifications is EqualUnmodifiableListView) return _certifications;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_certifications);
  }

  @override
  @JsonKey()
  final bool isOpened;
  @override
  final String? rating;
  @override
  final int? ratingCount;
  @override
  final double? distanceDelta;

  @override
  String toString() {
    return 'OutletModel(id: $id, location: $location, outletAddress: $outletAddress, timing: $timing, isAcceptingOrder: $isAcceptingOrder, menuSections: $menuSections, certifications: $certifications, isOpened: $isOpened, rating: $rating, ratingCount: $ratingCount, distanceDelta: $distanceDelta)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OutletModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.outletAddress, outletAddress) ||
                other.outletAddress == outletAddress) &&
            (identical(other.timing, timing) || other.timing == timing) &&
            (identical(other.isAcceptingOrder, isAcceptingOrder) ||
                other.isAcceptingOrder == isAcceptingOrder) &&
            const DeepCollectionEquality()
                .equals(other._menuSections, _menuSections) &&
            const DeepCollectionEquality()
                .equals(other._certifications, _certifications) &&
            (identical(other.isOpened, isOpened) ||
                other.isOpened == isOpened) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.ratingCount, ratingCount) ||
                other.ratingCount == ratingCount) &&
            (identical(other.distanceDelta, distanceDelta) ||
                other.distanceDelta == distanceDelta));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      location,
      outletAddress,
      timing,
      isAcceptingOrder,
      const DeepCollectionEquality().hash(_menuSections),
      const DeepCollectionEquality().hash(_certifications),
      isOpened,
      rating,
      ratingCount,
      distanceDelta);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OutletModelImplCopyWith<_$OutletModelImpl> get copyWith =>
      __$$OutletModelImplCopyWithImpl<_$OutletModelImpl>(this, _$identity);
}

abstract class _OutletModel extends OutletModel {
  const factory _OutletModel(
      {@JsonKey(name: '_id') required final String id,
      @JsonKey(name: 'outletLocation')
      required final ({
        double distance,
        double latitude,
        double longitude
      }) location,
      required final String outletAddress,
      @TimeOfDayConvertor.twentyFourHour()
      required final ({TimeOfDay fromTime, TimeOfDay toTime}) timing,
      @JsonKey(name: 'acceptingOrder', defaultValue: false)
      required final bool isAcceptingOrder,
      @JsonKey(defaultValue: <MenuSectionModel>[], fromJson: _menuFromJson)
      required final List<MenuSectionModel> menuSections,
      @JsonKey(defaultValue: <String>[]) final List<String> certifications,
      final bool isOpened,
      final String? rating,
      final int? ratingCount,
      final double? distanceDelta}) = _$OutletModelImpl;
  const _OutletModel._() : super._();

  @override
  @JsonKey(name: '_id')
  String get id;
  @override
  @JsonKey(name: 'outletLocation')
  ({double distance, double latitude, double longitude}) get location;
  @override
  String get outletAddress;
  @override
  @TimeOfDayConvertor.twentyFourHour()
  ({TimeOfDay fromTime, TimeOfDay toTime}) get timing;
  @override
  @JsonKey(name: 'acceptingOrder', defaultValue: false)
  bool get isAcceptingOrder;
  @override
  @JsonKey(defaultValue: <MenuSectionModel>[], fromJson: _menuFromJson)
  List<MenuSectionModel> get menuSections;
  @override
  @JsonKey(defaultValue: <String>[])
  List<String> get certifications;
  @override
  bool get isOpened;
  @override
  String? get rating;
  @override
  int? get ratingCount;
  @override
  double? get distanceDelta;
  @override
  @JsonKey(ignore: true)
  _$$OutletModelImplCopyWith<_$OutletModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$MenuSectionCategoryModel {
  @JsonKey(name: '_id')
  String get id => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;
  String get outletId => throw _privateConstructorUsedError;
  String get categoryName => throw _privateConstructorUsedError;
  String get categoryDescription => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: true)
  bool get isActive => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MenuSectionCategoryModelCopyWith<MenuSectionCategoryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MenuSectionCategoryModelCopyWith<$Res> {
  factory $MenuSectionCategoryModelCopyWith(MenuSectionCategoryModel value,
          $Res Function(MenuSectionCategoryModel) then) =
      _$MenuSectionCategoryModelCopyWithImpl<$Res, MenuSectionCategoryModel>;
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String id,
      DateTime createdAt,
      DateTime updatedAt,
      String outletId,
      String categoryName,
      String categoryDescription,
      @JsonKey(defaultValue: true) bool isActive});
}

/// @nodoc
class _$MenuSectionCategoryModelCopyWithImpl<$Res,
        $Val extends MenuSectionCategoryModel>
    implements $MenuSectionCategoryModelCopyWith<$Res> {
  _$MenuSectionCategoryModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? outletId = null,
    Object? categoryName = null,
    Object? categoryDescription = null,
    Object? isActive = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      outletId: null == outletId
          ? _value.outletId
          : outletId // ignore: cast_nullable_to_non_nullable
              as String,
      categoryName: null == categoryName
          ? _value.categoryName
          : categoryName // ignore: cast_nullable_to_non_nullable
              as String,
      categoryDescription: null == categoryDescription
          ? _value.categoryDescription
          : categoryDescription // ignore: cast_nullable_to_non_nullable
              as String,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MenuSectionCategoryModelImplCopyWith<$Res>
    implements $MenuSectionCategoryModelCopyWith<$Res> {
  factory _$$MenuSectionCategoryModelImplCopyWith(
          _$MenuSectionCategoryModelImpl value,
          $Res Function(_$MenuSectionCategoryModelImpl) then) =
      __$$MenuSectionCategoryModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String id,
      DateTime createdAt,
      DateTime updatedAt,
      String outletId,
      String categoryName,
      String categoryDescription,
      @JsonKey(defaultValue: true) bool isActive});
}

/// @nodoc
class __$$MenuSectionCategoryModelImplCopyWithImpl<$Res>
    extends _$MenuSectionCategoryModelCopyWithImpl<$Res,
        _$MenuSectionCategoryModelImpl>
    implements _$$MenuSectionCategoryModelImplCopyWith<$Res> {
  __$$MenuSectionCategoryModelImplCopyWithImpl(
      _$MenuSectionCategoryModelImpl _value,
      $Res Function(_$MenuSectionCategoryModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? outletId = null,
    Object? categoryName = null,
    Object? categoryDescription = null,
    Object? isActive = null,
  }) {
    return _then(_$MenuSectionCategoryModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      outletId: null == outletId
          ? _value.outletId
          : outletId // ignore: cast_nullable_to_non_nullable
              as String,
      categoryName: null == categoryName
          ? _value.categoryName
          : categoryName // ignore: cast_nullable_to_non_nullable
              as String,
      categoryDescription: null == categoryDescription
          ? _value.categoryDescription
          : categoryDescription // ignore: cast_nullable_to_non_nullable
              as String,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$MenuSectionCategoryModelImpl extends _MenuSectionCategoryModel {
  const _$MenuSectionCategoryModelImpl(
      {@JsonKey(name: '_id') required this.id,
      required this.createdAt,
      required this.updatedAt,
      required this.outletId,
      required this.categoryName,
      required this.categoryDescription,
      @JsonKey(defaultValue: true) this.isActive = true})
      : super._();

  @override
  @JsonKey(name: '_id')
  final String id;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;
  @override
  final String outletId;
  @override
  final String categoryName;
  @override
  final String categoryDescription;
  @override
  @JsonKey(defaultValue: true)
  final bool isActive;

  @override
  String toString() {
    return 'MenuSectionCategoryModel(id: $id, createdAt: $createdAt, updatedAt: $updatedAt, outletId: $outletId, categoryName: $categoryName, categoryDescription: $categoryDescription, isActive: $isActive)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MenuSectionCategoryModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.outletId, outletId) ||
                other.outletId == outletId) &&
            (identical(other.categoryName, categoryName) ||
                other.categoryName == categoryName) &&
            (identical(other.categoryDescription, categoryDescription) ||
                other.categoryDescription == categoryDescription) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, createdAt, updatedAt,
      outletId, categoryName, categoryDescription, isActive);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MenuSectionCategoryModelImplCopyWith<_$MenuSectionCategoryModelImpl>
      get copyWith => __$$MenuSectionCategoryModelImplCopyWithImpl<
          _$MenuSectionCategoryModelImpl>(this, _$identity);
}

abstract class _MenuSectionCategoryModel extends MenuSectionCategoryModel {
  const factory _MenuSectionCategoryModel(
          {@JsonKey(name: '_id') required final String id,
          required final DateTime createdAt,
          required final DateTime updatedAt,
          required final String outletId,
          required final String categoryName,
          required final String categoryDescription,
          @JsonKey(defaultValue: true) final bool isActive}) =
      _$MenuSectionCategoryModelImpl;
  const _MenuSectionCategoryModel._() : super._();

  @override
  @JsonKey(name: '_id')
  String get id;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;
  @override
  String get outletId;
  @override
  String get categoryName;
  @override
  String get categoryDescription;
  @override
  @JsonKey(defaultValue: true)
  bool get isActive;
  @override
  @JsonKey(ignore: true)
  _$$MenuSectionCategoryModelImplCopyWith<_$MenuSectionCategoryModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$MenuSectionModel {
  @JsonKey(name: '_id')
  String get id => throw _privateConstructorUsedError;
  MenuSectionCategoryModel get category => throw _privateConstructorUsedError;
  int get position => throw _privateConstructorUsedError;
  List<MenuItemModel> get items => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MenuSectionModelCopyWith<MenuSectionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MenuSectionModelCopyWith<$Res> {
  factory $MenuSectionModelCopyWith(
          MenuSectionModel value, $Res Function(MenuSectionModel) then) =
      _$MenuSectionModelCopyWithImpl<$Res, MenuSectionModel>;
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String id,
      MenuSectionCategoryModel category,
      int position,
      List<MenuItemModel> items});

  $MenuSectionCategoryModelCopyWith<$Res> get category;
}

/// @nodoc
class _$MenuSectionModelCopyWithImpl<$Res, $Val extends MenuSectionModel>
    implements $MenuSectionModelCopyWith<$Res> {
  _$MenuSectionModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? category = null,
    Object? position = null,
    Object? items = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as MenuSectionCategoryModel,
      position: null == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as int,
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<MenuItemModel>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MenuSectionCategoryModelCopyWith<$Res> get category {
    return $MenuSectionCategoryModelCopyWith<$Res>(_value.category, (value) {
      return _then(_value.copyWith(category: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MenuSectionModelImplCopyWith<$Res>
    implements $MenuSectionModelCopyWith<$Res> {
  factory _$$MenuSectionModelImplCopyWith(_$MenuSectionModelImpl value,
          $Res Function(_$MenuSectionModelImpl) then) =
      __$$MenuSectionModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String id,
      MenuSectionCategoryModel category,
      int position,
      List<MenuItemModel> items});

  @override
  $MenuSectionCategoryModelCopyWith<$Res> get category;
}

/// @nodoc
class __$$MenuSectionModelImplCopyWithImpl<$Res>
    extends _$MenuSectionModelCopyWithImpl<$Res, _$MenuSectionModelImpl>
    implements _$$MenuSectionModelImplCopyWith<$Res> {
  __$$MenuSectionModelImplCopyWithImpl(_$MenuSectionModelImpl _value,
      $Res Function(_$MenuSectionModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? category = null,
    Object? position = null,
    Object? items = null,
  }) {
    return _then(_$MenuSectionModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as MenuSectionCategoryModel,
      position: null == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as int,
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<MenuItemModel>,
    ));
  }
}

/// @nodoc

class _$MenuSectionModelImpl extends _MenuSectionModel {
  const _$MenuSectionModelImpl(
      {@JsonKey(name: '_id') required this.id,
      required this.category,
      this.position = 1,
      final List<MenuItemModel> items = const <MenuItemModel>[]})
      : _items = items,
        super._();

  @override
  @JsonKey(name: '_id')
  final String id;
  @override
  final MenuSectionCategoryModel category;
  @override
  @JsonKey()
  final int position;
  final List<MenuItemModel> _items;
  @override
  @JsonKey()
  List<MenuItemModel> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  String toString() {
    return 'MenuSectionModel(id: $id, category: $category, position: $position, items: $items)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MenuSectionModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.position, position) ||
                other.position == position) &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, category, position,
      const DeepCollectionEquality().hash(_items));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MenuSectionModelImplCopyWith<_$MenuSectionModelImpl> get copyWith =>
      __$$MenuSectionModelImplCopyWithImpl<_$MenuSectionModelImpl>(
          this, _$identity);
}

abstract class _MenuSectionModel extends MenuSectionModel {
  const factory _MenuSectionModel(
      {@JsonKey(name: '_id') required final String id,
      required final MenuSectionCategoryModel category,
      final int position,
      final List<MenuItemModel> items}) = _$MenuSectionModelImpl;
  const _MenuSectionModel._() : super._();

  @override
  @JsonKey(name: '_id')
  String get id;
  @override
  MenuSectionCategoryModel get category;
  @override
  int get position;
  @override
  List<MenuItemModel> get items;
  @override
  @JsonKey(ignore: true)
  _$$MenuSectionModelImplCopyWith<_$MenuSectionModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
