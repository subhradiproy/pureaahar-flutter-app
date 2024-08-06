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
  List<String> get certifications => throw _privateConstructorUsedError;
  List<MenuSectionModel> get menuSections => throw _privateConstructorUsedError;
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
      List<String> certifications,
      List<MenuSectionModel> menuSections,
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
    Object? certifications = null,
    Object? menuSections = null,
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
      certifications: null == certifications
          ? _value.certifications
          : certifications // ignore: cast_nullable_to_non_nullable
              as List<String>,
      menuSections: null == menuSections
          ? _value.menuSections
          : menuSections // ignore: cast_nullable_to_non_nullable
              as List<MenuSectionModel>,
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
      List<String> certifications,
      List<MenuSectionModel> menuSections,
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
    Object? certifications = null,
    Object? menuSections = null,
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
      certifications: null == certifications
          ? _value._certifications
          : certifications // ignore: cast_nullable_to_non_nullable
              as List<String>,
      menuSections: null == menuSections
          ? _value._menuSections
          : menuSections // ignore: cast_nullable_to_non_nullable
              as List<MenuSectionModel>,
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
      final List<String> certifications = const <String>[],
      final List<MenuSectionModel> menuSections = const <MenuSectionModel>[],
      this.isOpened = false,
      this.rating,
      this.ratingCount,
      this.distanceDelta})
      : _certifications = certifications,
        _menuSections = menuSections,
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
  final List<String> _certifications;
  @override
  @JsonKey()
  List<String> get certifications {
    if (_certifications is EqualUnmodifiableListView) return _certifications;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_certifications);
  }

  final List<MenuSectionModel> _menuSections;
  @override
  @JsonKey()
  List<MenuSectionModel> get menuSections {
    if (_menuSections is EqualUnmodifiableListView) return _menuSections;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_menuSections);
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
    return 'OutletModel(id: $id, location: $location, outletAddress: $outletAddress, timing: $timing, isAcceptingOrder: $isAcceptingOrder, certifications: $certifications, menuSections: $menuSections, isOpened: $isOpened, rating: $rating, ratingCount: $ratingCount, distanceDelta: $distanceDelta)';
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
                .equals(other._certifications, _certifications) &&
            const DeepCollectionEquality()
                .equals(other._menuSections, _menuSections) &&
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
      const DeepCollectionEquality().hash(_certifications),
      const DeepCollectionEquality().hash(_menuSections),
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
      final List<String> certifications,
      final List<MenuSectionModel> menuSections,
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
  List<String> get certifications;
  @override
  List<MenuSectionModel> get menuSections;
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
mixin _$MenuSectionModel {
  @JsonKey(name: '_id')
  String get id => throw _privateConstructorUsedError;
  Object get category => throw _privateConstructorUsedError;
  int get position => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            @JsonKey(name: '_id') String id, String category, int position)
        $default, {
    required TResult Function(
            @JsonKey(name: '_id') String id,
            ({
              String categoryDescription,
              String categoryName,
              DateTime createdAt,
              bool isActivate,
              String outletId,
              DateTime updatedAt
            }) category,
            int position,
            List<({MenuItemModel itemId, int position})> items)
        object,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            @JsonKey(name: '_id') String id, String category, int position)?
        $default, {
    TResult? Function(
            @JsonKey(name: '_id') String id,
            ({
              String categoryDescription,
              String categoryName,
              DateTime createdAt,
              bool isActivate,
              String outletId,
              DateTime updatedAt
            }) category,
            int position,
            List<({MenuItemModel itemId, int position})> items)?
        object,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            @JsonKey(name: '_id') String id, String category, int position)?
        $default, {
    TResult Function(
            @JsonKey(name: '_id') String id,
            ({
              String categoryDescription,
              String categoryName,
              DateTime createdAt,
              bool isActivate,
              String outletId,
              DateTime updatedAt
            }) category,
            int position,
            List<({MenuItemModel itemId, int position})> items)?
        object,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(MenuSectionModel value) $default, {
    required TResult Function(MenuSectionModelObject value) object,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(MenuSectionModel value)? $default, {
    TResult? Function(MenuSectionModelObject value)? object,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(MenuSectionModel value)? $default, {
    TResult Function(MenuSectionModelObject value)? object,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

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
  $Res call({@JsonKey(name: '_id') String id, int position});
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
    Object? position = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      position: null == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
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
  $Res call({@JsonKey(name: '_id') String id, String category, int position});
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
  }) {
    return _then(_$MenuSectionModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      position: null == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$MenuSectionModelImpl extends MenuSectionModel {
  const _$MenuSectionModelImpl(
      {@JsonKey(name: '_id') required this.id,
      required this.category,
      this.position = 1})
      : super._();

  @override
  @JsonKey(name: '_id')
  final String id;
  @override
  final String category;
  @override
  @JsonKey()
  final int position;

  @override
  String toString() {
    return 'MenuSectionModel(id: $id, category: $category, position: $position)';
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
                other.position == position));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, category, position);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MenuSectionModelImplCopyWith<_$MenuSectionModelImpl> get copyWith =>
      __$$MenuSectionModelImplCopyWithImpl<_$MenuSectionModelImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            @JsonKey(name: '_id') String id, String category, int position)
        $default, {
    required TResult Function(
            @JsonKey(name: '_id') String id,
            ({
              String categoryDescription,
              String categoryName,
              DateTime createdAt,
              bool isActivate,
              String outletId,
              DateTime updatedAt
            }) category,
            int position,
            List<({MenuItemModel itemId, int position})> items)
        object,
  }) {
    return $default(id, category, position);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            @JsonKey(name: '_id') String id, String category, int position)?
        $default, {
    TResult? Function(
            @JsonKey(name: '_id') String id,
            ({
              String categoryDescription,
              String categoryName,
              DateTime createdAt,
              bool isActivate,
              String outletId,
              DateTime updatedAt
            }) category,
            int position,
            List<({MenuItemModel itemId, int position})> items)?
        object,
  }) {
    return $default?.call(id, category, position);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            @JsonKey(name: '_id') String id, String category, int position)?
        $default, {
    TResult Function(
            @JsonKey(name: '_id') String id,
            ({
              String categoryDescription,
              String categoryName,
              DateTime createdAt,
              bool isActivate,
              String outletId,
              DateTime updatedAt
            }) category,
            int position,
            List<({MenuItemModel itemId, int position})> items)?
        object,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(id, category, position);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(MenuSectionModel value) $default, {
    required TResult Function(MenuSectionModelObject value) object,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(MenuSectionModel value)? $default, {
    TResult? Function(MenuSectionModelObject value)? object,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(MenuSectionModel value)? $default, {
    TResult Function(MenuSectionModelObject value)? object,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class MenuSectionModel extends MenuSectionModel {
  const factory MenuSectionModel(
      {@JsonKey(name: '_id') required final String id,
      required final String category,
      final int position}) = _$MenuSectionModelImpl;
  const MenuSectionModel._() : super._();

  @override
  @JsonKey(name: '_id')
  String get id;
  @override
  String get category;
  @override
  int get position;
  @override
  @JsonKey(ignore: true)
  _$$MenuSectionModelImplCopyWith<_$MenuSectionModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MenuSectionModelObjectImplCopyWith<$Res>
    implements $MenuSectionModelCopyWith<$Res> {
  factory _$$MenuSectionModelObjectImplCopyWith(
          _$MenuSectionModelObjectImpl value,
          $Res Function(_$MenuSectionModelObjectImpl) then) =
      __$$MenuSectionModelObjectImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String id,
      ({
        String categoryDescription,
        String categoryName,
        DateTime createdAt,
        bool isActivate,
        String outletId,
        DateTime updatedAt
      }) category,
      int position,
      List<({MenuItemModel itemId, int position})> items});
}

/// @nodoc
class __$$MenuSectionModelObjectImplCopyWithImpl<$Res>
    extends _$MenuSectionModelCopyWithImpl<$Res, _$MenuSectionModelObjectImpl>
    implements _$$MenuSectionModelObjectImplCopyWith<$Res> {
  __$$MenuSectionModelObjectImplCopyWithImpl(
      _$MenuSectionModelObjectImpl _value,
      $Res Function(_$MenuSectionModelObjectImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? category = null,
    Object? position = null,
    Object? items = null,
  }) {
    return _then(_$MenuSectionModelObjectImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as ({
              String categoryDescription,
              String categoryName,
              DateTime createdAt,
              bool isActivate,
              String outletId,
              DateTime updatedAt
            }),
      position: null == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as int,
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<({MenuItemModel itemId, int position})>,
    ));
  }
}

/// @nodoc

class _$MenuSectionModelObjectImpl extends MenuSectionModelObject {
  const _$MenuSectionModelObjectImpl(
      {@JsonKey(name: '_id') required this.id,
      required this.category,
      this.position = 1,
      final List<({MenuItemModel itemId, int position})> items = const <({
        int position,
        MenuItemModel itemId
      })>[]})
      : _items = items,
        super._();

  @override
  @JsonKey(name: '_id')
  final String id;
  @override
  final ({
    String categoryDescription,
    String categoryName,
    DateTime createdAt,
    bool isActivate,
    String outletId,
    DateTime updatedAt
  }) category;
  @override
  @JsonKey()
  final int position;
  final List<({MenuItemModel itemId, int position})> _items;
  @override
  @JsonKey()
  List<({MenuItemModel itemId, int position})> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  String toString() {
    return 'MenuSectionModel.object(id: $id, category: $category, position: $position, items: $items)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MenuSectionModelObjectImpl &&
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
  _$$MenuSectionModelObjectImplCopyWith<_$MenuSectionModelObjectImpl>
      get copyWith => __$$MenuSectionModelObjectImplCopyWithImpl<
          _$MenuSectionModelObjectImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            @JsonKey(name: '_id') String id, String category, int position)
        $default, {
    required TResult Function(
            @JsonKey(name: '_id') String id,
            ({
              String categoryDescription,
              String categoryName,
              DateTime createdAt,
              bool isActivate,
              String outletId,
              DateTime updatedAt
            }) category,
            int position,
            List<({MenuItemModel itemId, int position})> items)
        object,
  }) {
    return object(id, category, position, items);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            @JsonKey(name: '_id') String id, String category, int position)?
        $default, {
    TResult? Function(
            @JsonKey(name: '_id') String id,
            ({
              String categoryDescription,
              String categoryName,
              DateTime createdAt,
              bool isActivate,
              String outletId,
              DateTime updatedAt
            }) category,
            int position,
            List<({MenuItemModel itemId, int position})> items)?
        object,
  }) {
    return object?.call(id, category, position, items);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            @JsonKey(name: '_id') String id, String category, int position)?
        $default, {
    TResult Function(
            @JsonKey(name: '_id') String id,
            ({
              String categoryDescription,
              String categoryName,
              DateTime createdAt,
              bool isActivate,
              String outletId,
              DateTime updatedAt
            }) category,
            int position,
            List<({MenuItemModel itemId, int position})> items)?
        object,
    required TResult orElse(),
  }) {
    if (object != null) {
      return object(id, category, position, items);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(MenuSectionModel value) $default, {
    required TResult Function(MenuSectionModelObject value) object,
  }) {
    return object(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(MenuSectionModel value)? $default, {
    TResult? Function(MenuSectionModelObject value)? object,
  }) {
    return object?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(MenuSectionModel value)? $default, {
    TResult Function(MenuSectionModelObject value)? object,
    required TResult orElse(),
  }) {
    if (object != null) {
      return object(this);
    }
    return orElse();
  }
}

abstract class MenuSectionModelObject extends MenuSectionModel {
  const factory MenuSectionModelObject(
          {@JsonKey(name: '_id') required final String id,
          required final ({
            String categoryDescription,
            String categoryName,
            DateTime createdAt,
            bool isActivate,
            String outletId,
            DateTime updatedAt
          }) category,
          final int position,
          final List<({MenuItemModel itemId, int position})> items}) =
      _$MenuSectionModelObjectImpl;
  const MenuSectionModelObject._() : super._();

  @override
  @JsonKey(name: '_id')
  String get id;
  @override
  ({
    String categoryDescription,
    String categoryName,
    DateTime createdAt,
    bool isActivate,
    String outletId,
    DateTime updatedAt
  }) get category;
  @override
  int get position;
  List<({MenuItemModel itemId, int position})> get items;
  @override
  @JsonKey(ignore: true)
  _$$MenuSectionModelObjectImplCopyWith<_$MenuSectionModelObjectImpl>
      get copyWith => throw _privateConstructorUsedError;
}
