// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../restaurant_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Restaurant {
  String get restaurantId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  Outlet? get nearestOutlet => throw _privateConstructorUsedError;
  List<Outlet> get serviceableOutlets => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RestaurantCopyWith<Restaurant> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RestaurantCopyWith<$Res> {
  factory $RestaurantCopyWith(
          Restaurant value, $Res Function(Restaurant) then) =
      _$RestaurantCopyWithImpl<$Res, Restaurant>;
  @useResult
  $Res call(
      {String restaurantId,
      String name,
      String? description,
      Outlet? nearestOutlet,
      List<Outlet> serviceableOutlets});

  $OutletCopyWith<$Res>? get nearestOutlet;
}

/// @nodoc
class _$RestaurantCopyWithImpl<$Res, $Val extends Restaurant>
    implements $RestaurantCopyWith<$Res> {
  _$RestaurantCopyWithImpl(this._value, this._then);

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
              as Outlet?,
      serviceableOutlets: null == serviceableOutlets
          ? _value.serviceableOutlets
          : serviceableOutlets // ignore: cast_nullable_to_non_nullable
              as List<Outlet>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $OutletCopyWith<$Res>? get nearestOutlet {
    if (_value.nearestOutlet == null) {
      return null;
    }

    return $OutletCopyWith<$Res>(_value.nearestOutlet!, (value) {
      return _then(_value.copyWith(nearestOutlet: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RestaurantImplCopyWith<$Res>
    implements $RestaurantCopyWith<$Res> {
  factory _$$RestaurantImplCopyWith(
          _$RestaurantImpl value, $Res Function(_$RestaurantImpl) then) =
      __$$RestaurantImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String restaurantId,
      String name,
      String? description,
      Outlet? nearestOutlet,
      List<Outlet> serviceableOutlets});

  @override
  $OutletCopyWith<$Res>? get nearestOutlet;
}

/// @nodoc
class __$$RestaurantImplCopyWithImpl<$Res>
    extends _$RestaurantCopyWithImpl<$Res, _$RestaurantImpl>
    implements _$$RestaurantImplCopyWith<$Res> {
  __$$RestaurantImplCopyWithImpl(
      _$RestaurantImpl _value, $Res Function(_$RestaurantImpl) _then)
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
    return _then(_$RestaurantImpl(
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
              as Outlet?,
      serviceableOutlets: null == serviceableOutlets
          ? _value._serviceableOutlets
          : serviceableOutlets // ignore: cast_nullable_to_non_nullable
              as List<Outlet>,
    ));
  }
}

/// @nodoc

class _$RestaurantImpl implements _Restaurant {
  const _$RestaurantImpl(
      {required this.restaurantId,
      required this.name,
      this.description,
      this.nearestOutlet,
      final List<Outlet> serviceableOutlets = const <Outlet>[]})
      : _serviceableOutlets = serviceableOutlets;

  @override
  final String restaurantId;
  @override
  final String name;
  @override
  final String? description;
  @override
  final Outlet? nearestOutlet;
  final List<Outlet> _serviceableOutlets;
  @override
  @JsonKey()
  List<Outlet> get serviceableOutlets {
    if (_serviceableOutlets is EqualUnmodifiableListView)
      return _serviceableOutlets;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_serviceableOutlets);
  }

  @override
  String toString() {
    return 'Restaurant(restaurantId: $restaurantId, name: $name, description: $description, nearestOutlet: $nearestOutlet, serviceableOutlets: $serviceableOutlets)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RestaurantImpl &&
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
  _$$RestaurantImplCopyWith<_$RestaurantImpl> get copyWith =>
      __$$RestaurantImplCopyWithImpl<_$RestaurantImpl>(this, _$identity);
}

abstract class _Restaurant implements Restaurant {
  const factory _Restaurant(
      {required final String restaurantId,
      required final String name,
      final String? description,
      final Outlet? nearestOutlet,
      final List<Outlet> serviceableOutlets}) = _$RestaurantImpl;

  @override
  String get restaurantId;
  @override
  String get name;
  @override
  String? get description;
  @override
  Outlet? get nearestOutlet;
  @override
  List<Outlet> get serviceableOutlets;
  @override
  @JsonKey(ignore: true)
  _$$RestaurantImplCopyWith<_$RestaurantImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$Outlet {
  String get id => throw _privateConstructorUsedError;
  ({double distance, double latitude, double longitude}) get location =>
      throw _privateConstructorUsedError;
  String get outletAddress => throw _privateConstructorUsedError;
  ({TimeOfDay fromTime, TimeOfDay toTime}) get timing =>
      throw _privateConstructorUsedError;
  bool get isAcceptingOrder => throw _privateConstructorUsedError;
  String? get rating => throw _privateConstructorUsedError;
  List<String> get certifications => throw _privateConstructorUsedError;
  List<MenuSection> get menus => throw _privateConstructorUsedError;
  bool get isOpened => throw _privateConstructorUsedError;
  int? get ratingCount => throw _privateConstructorUsedError;
  double? get distanceDelta => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OutletCopyWith<Outlet> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OutletCopyWith<$Res> {
  factory $OutletCopyWith(Outlet value, $Res Function(Outlet) then) =
      _$OutletCopyWithImpl<$Res, Outlet>;
  @useResult
  $Res call(
      {String id,
      ({double distance, double latitude, double longitude}) location,
      String outletAddress,
      ({TimeOfDay fromTime, TimeOfDay toTime}) timing,
      bool isAcceptingOrder,
      String? rating,
      List<String> certifications,
      List<MenuSection> menus,
      bool isOpened,
      int? ratingCount,
      double? distanceDelta});
}

/// @nodoc
class _$OutletCopyWithImpl<$Res, $Val extends Outlet>
    implements $OutletCopyWith<$Res> {
  _$OutletCopyWithImpl(this._value, this._then);

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
    Object? rating = freezed,
    Object? certifications = null,
    Object? menus = null,
    Object? isOpened = null,
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
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as String?,
      certifications: null == certifications
          ? _value.certifications
          : certifications // ignore: cast_nullable_to_non_nullable
              as List<String>,
      menus: null == menus
          ? _value.menus
          : menus // ignore: cast_nullable_to_non_nullable
              as List<MenuSection>,
      isOpened: null == isOpened
          ? _value.isOpened
          : isOpened // ignore: cast_nullable_to_non_nullable
              as bool,
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
abstract class _$$OutletImplCopyWith<$Res> implements $OutletCopyWith<$Res> {
  factory _$$OutletImplCopyWith(
          _$OutletImpl value, $Res Function(_$OutletImpl) then) =
      __$$OutletImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      ({double distance, double latitude, double longitude}) location,
      String outletAddress,
      ({TimeOfDay fromTime, TimeOfDay toTime}) timing,
      bool isAcceptingOrder,
      String? rating,
      List<String> certifications,
      List<MenuSection> menus,
      bool isOpened,
      int? ratingCount,
      double? distanceDelta});
}

/// @nodoc
class __$$OutletImplCopyWithImpl<$Res>
    extends _$OutletCopyWithImpl<$Res, _$OutletImpl>
    implements _$$OutletImplCopyWith<$Res> {
  __$$OutletImplCopyWithImpl(
      _$OutletImpl _value, $Res Function(_$OutletImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? location = null,
    Object? outletAddress = null,
    Object? timing = null,
    Object? isAcceptingOrder = null,
    Object? rating = freezed,
    Object? certifications = null,
    Object? menus = null,
    Object? isOpened = null,
    Object? ratingCount = freezed,
    Object? distanceDelta = freezed,
  }) {
    return _then(_$OutletImpl(
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
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as String?,
      certifications: null == certifications
          ? _value._certifications
          : certifications // ignore: cast_nullable_to_non_nullable
              as List<String>,
      menus: null == menus
          ? _value._menus
          : menus // ignore: cast_nullable_to_non_nullable
              as List<MenuSection>,
      isOpened: null == isOpened
          ? _value.isOpened
          : isOpened // ignore: cast_nullable_to_non_nullable
              as bool,
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

class _$OutletImpl implements _Outlet {
  const _$OutletImpl(
      {required this.id,
      required this.location,
      required this.outletAddress,
      required this.timing,
      this.isAcceptingOrder = false,
      this.rating,
      final List<String> certifications = const <String>[],
      final List<MenuSection> menus = const <MenuSection>[],
      this.isOpened = false,
      this.ratingCount,
      this.distanceDelta})
      : _certifications = certifications,
        _menus = menus;

  @override
  final String id;
  @override
  final ({double distance, double latitude, double longitude}) location;
  @override
  final String outletAddress;
  @override
  final ({TimeOfDay fromTime, TimeOfDay toTime}) timing;
  @override
  @JsonKey()
  final bool isAcceptingOrder;
  @override
  final String? rating;
  final List<String> _certifications;
  @override
  @JsonKey()
  List<String> get certifications {
    if (_certifications is EqualUnmodifiableListView) return _certifications;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_certifications);
  }

  final List<MenuSection> _menus;
  @override
  @JsonKey()
  List<MenuSection> get menus {
    if (_menus is EqualUnmodifiableListView) return _menus;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_menus);
  }

  @override
  @JsonKey()
  final bool isOpened;
  @override
  final int? ratingCount;
  @override
  final double? distanceDelta;

  @override
  String toString() {
    return 'Outlet(id: $id, location: $location, outletAddress: $outletAddress, timing: $timing, isAcceptingOrder: $isAcceptingOrder, rating: $rating, certifications: $certifications, menus: $menus, isOpened: $isOpened, ratingCount: $ratingCount, distanceDelta: $distanceDelta)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OutletImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.outletAddress, outletAddress) ||
                other.outletAddress == outletAddress) &&
            (identical(other.timing, timing) || other.timing == timing) &&
            (identical(other.isAcceptingOrder, isAcceptingOrder) ||
                other.isAcceptingOrder == isAcceptingOrder) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            const DeepCollectionEquality()
                .equals(other._certifications, _certifications) &&
            const DeepCollectionEquality().equals(other._menus, _menus) &&
            (identical(other.isOpened, isOpened) ||
                other.isOpened == isOpened) &&
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
      rating,
      const DeepCollectionEquality().hash(_certifications),
      const DeepCollectionEquality().hash(_menus),
      isOpened,
      ratingCount,
      distanceDelta);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OutletImplCopyWith<_$OutletImpl> get copyWith =>
      __$$OutletImplCopyWithImpl<_$OutletImpl>(this, _$identity);
}

abstract class _Outlet implements Outlet {
  const factory _Outlet(
      {required final String id,
      required final ({
        double distance,
        double latitude,
        double longitude
      }) location,
      required final String outletAddress,
      required final ({TimeOfDay fromTime, TimeOfDay toTime}) timing,
      final bool isAcceptingOrder,
      final String? rating,
      final List<String> certifications,
      final List<MenuSection> menus,
      final bool isOpened,
      final int? ratingCount,
      final double? distanceDelta}) = _$OutletImpl;

  @override
  String get id;
  @override
  ({double distance, double latitude, double longitude}) get location;
  @override
  String get outletAddress;
  @override
  ({TimeOfDay fromTime, TimeOfDay toTime}) get timing;
  @override
  bool get isAcceptingOrder;
  @override
  String? get rating;
  @override
  List<String> get certifications;
  @override
  List<MenuSection> get menus;
  @override
  bool get isOpened;
  @override
  int? get ratingCount;
  @override
  double? get distanceDelta;
  @override
  @JsonKey(ignore: true)
  _$$OutletImplCopyWith<_$OutletImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$MenuSection {
  String get id => throw _privateConstructorUsedError;
  MenuSectionCategory get category => throw _privateConstructorUsedError;
  int get position => throw _privateConstructorUsedError;
  List<MenuItem> get items => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MenuSectionCopyWith<MenuSection> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MenuSectionCopyWith<$Res> {
  factory $MenuSectionCopyWith(
          MenuSection value, $Res Function(MenuSection) then) =
      _$MenuSectionCopyWithImpl<$Res, MenuSection>;
  @useResult
  $Res call(
      {String id,
      MenuSectionCategory category,
      int position,
      List<MenuItem> items});

  $MenuSectionCategoryCopyWith<$Res> get category;
}

/// @nodoc
class _$MenuSectionCopyWithImpl<$Res, $Val extends MenuSection>
    implements $MenuSectionCopyWith<$Res> {
  _$MenuSectionCopyWithImpl(this._value, this._then);

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
              as MenuSectionCategory,
      position: null == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as int,
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<MenuItem>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MenuSectionCategoryCopyWith<$Res> get category {
    return $MenuSectionCategoryCopyWith<$Res>(_value.category, (value) {
      return _then(_value.copyWith(category: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MenuSectionImplCopyWith<$Res>
    implements $MenuSectionCopyWith<$Res> {
  factory _$$MenuSectionImplCopyWith(
          _$MenuSectionImpl value, $Res Function(_$MenuSectionImpl) then) =
      __$$MenuSectionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      MenuSectionCategory category,
      int position,
      List<MenuItem> items});

  @override
  $MenuSectionCategoryCopyWith<$Res> get category;
}

/// @nodoc
class __$$MenuSectionImplCopyWithImpl<$Res>
    extends _$MenuSectionCopyWithImpl<$Res, _$MenuSectionImpl>
    implements _$$MenuSectionImplCopyWith<$Res> {
  __$$MenuSectionImplCopyWithImpl(
      _$MenuSectionImpl _value, $Res Function(_$MenuSectionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? category = null,
    Object? position = null,
    Object? items = null,
  }) {
    return _then(_$MenuSectionImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as MenuSectionCategory,
      position: null == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as int,
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<MenuItem>,
    ));
  }
}

/// @nodoc

class _$MenuSectionImpl implements _MenuSection {
  const _$MenuSectionImpl(
      {required this.id,
      required this.category,
      this.position = 1,
      final List<MenuItem> items = const <MenuItem>[]})
      : _items = items;

  @override
  final String id;
  @override
  final MenuSectionCategory category;
  @override
  @JsonKey()
  final int position;
  final List<MenuItem> _items;
  @override
  @JsonKey()
  List<MenuItem> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  String toString() {
    return 'MenuSection(id: $id, category: $category, position: $position, items: $items)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MenuSectionImpl &&
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
  _$$MenuSectionImplCopyWith<_$MenuSectionImpl> get copyWith =>
      __$$MenuSectionImplCopyWithImpl<_$MenuSectionImpl>(this, _$identity);
}

abstract class _MenuSection implements MenuSection {
  const factory _MenuSection(
      {required final String id,
      required final MenuSectionCategory category,
      final int position,
      final List<MenuItem> items}) = _$MenuSectionImpl;

  @override
  String get id;
  @override
  MenuSectionCategory get category;
  @override
  int get position;
  @override
  List<MenuItem> get items;
  @override
  @JsonKey(ignore: true)
  _$$MenuSectionImplCopyWith<_$MenuSectionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$MenuSectionCategory {
  String get id => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;
  String get outletId => throw _privateConstructorUsedError;
  String get categoryName => throw _privateConstructorUsedError;
  String get categoryDescription => throw _privateConstructorUsedError;
  bool get isActive => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MenuSectionCategoryCopyWith<MenuSectionCategory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MenuSectionCategoryCopyWith<$Res> {
  factory $MenuSectionCategoryCopyWith(
          MenuSectionCategory value, $Res Function(MenuSectionCategory) then) =
      _$MenuSectionCategoryCopyWithImpl<$Res, MenuSectionCategory>;
  @useResult
  $Res call(
      {String id,
      DateTime createdAt,
      DateTime updatedAt,
      String outletId,
      String categoryName,
      String categoryDescription,
      bool isActive});
}

/// @nodoc
class _$MenuSectionCategoryCopyWithImpl<$Res, $Val extends MenuSectionCategory>
    implements $MenuSectionCategoryCopyWith<$Res> {
  _$MenuSectionCategoryCopyWithImpl(this._value, this._then);

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
abstract class _$$MenuSectionCategoryImplCopyWith<$Res>
    implements $MenuSectionCategoryCopyWith<$Res> {
  factory _$$MenuSectionCategoryImplCopyWith(_$MenuSectionCategoryImpl value,
          $Res Function(_$MenuSectionCategoryImpl) then) =
      __$$MenuSectionCategoryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      DateTime createdAt,
      DateTime updatedAt,
      String outletId,
      String categoryName,
      String categoryDescription,
      bool isActive});
}

/// @nodoc
class __$$MenuSectionCategoryImplCopyWithImpl<$Res>
    extends _$MenuSectionCategoryCopyWithImpl<$Res, _$MenuSectionCategoryImpl>
    implements _$$MenuSectionCategoryImplCopyWith<$Res> {
  __$$MenuSectionCategoryImplCopyWithImpl(_$MenuSectionCategoryImpl _value,
      $Res Function(_$MenuSectionCategoryImpl) _then)
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
    return _then(_$MenuSectionCategoryImpl(
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

class _$MenuSectionCategoryImpl implements _MenuSectionCategory {
  const _$MenuSectionCategoryImpl(
      {required this.id,
      required this.createdAt,
      required this.updatedAt,
      required this.outletId,
      required this.categoryName,
      required this.categoryDescription,
      this.isActive = true});

  @override
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
  @JsonKey()
  final bool isActive;

  @override
  String toString() {
    return 'MenuSectionCategory(id: $id, createdAt: $createdAt, updatedAt: $updatedAt, outletId: $outletId, categoryName: $categoryName, categoryDescription: $categoryDescription, isActive: $isActive)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MenuSectionCategoryImpl &&
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
  _$$MenuSectionCategoryImplCopyWith<_$MenuSectionCategoryImpl> get copyWith =>
      __$$MenuSectionCategoryImplCopyWithImpl<_$MenuSectionCategoryImpl>(
          this, _$identity);
}

abstract class _MenuSectionCategory implements MenuSectionCategory {
  const factory _MenuSectionCategory(
      {required final String id,
      required final DateTime createdAt,
      required final DateTime updatedAt,
      required final String outletId,
      required final String categoryName,
      required final String categoryDescription,
      final bool isActive}) = _$MenuSectionCategoryImpl;

  @override
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
  bool get isActive;
  @override
  @JsonKey(ignore: true)
  _$$MenuSectionCategoryImplCopyWith<_$MenuSectionCategoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
