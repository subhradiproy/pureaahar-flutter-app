// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../brand_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Brand {
  String get restaurantId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get background => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  Outlet? get nearestOutlet => throw _privateConstructorUsedError;
  String? get logo => throw _privateConstructorUsedError;
  List<Outlet> get serviceableOutlets => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BrandCopyWith<Brand> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BrandCopyWith<$Res> {
  factory $BrandCopyWith(Brand value, $Res Function(Brand) then) =
      _$BrandCopyWithImpl<$Res, Brand>;
  @useResult
  $Res call(
      {String restaurantId,
      String name,
      String background,
      String? description,
      Outlet? nearestOutlet,
      String? logo,
      List<Outlet> serviceableOutlets});

  $OutletCopyWith<$Res>? get nearestOutlet;
}

/// @nodoc
class _$BrandCopyWithImpl<$Res, $Val extends Brand>
    implements $BrandCopyWith<$Res> {
  _$BrandCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? restaurantId = null,
    Object? name = null,
    Object? background = null,
    Object? description = freezed,
    Object? nearestOutlet = freezed,
    Object? logo = freezed,
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
      background: null == background
          ? _value.background
          : background // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      nearestOutlet: freezed == nearestOutlet
          ? _value.nearestOutlet
          : nearestOutlet // ignore: cast_nullable_to_non_nullable
              as Outlet?,
      logo: freezed == logo
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as String?,
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
abstract class _$$BrandImplCopyWith<$Res> implements $BrandCopyWith<$Res> {
  factory _$$BrandImplCopyWith(
          _$BrandImpl value, $Res Function(_$BrandImpl) then) =
      __$$BrandImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String restaurantId,
      String name,
      String background,
      String? description,
      Outlet? nearestOutlet,
      String? logo,
      List<Outlet> serviceableOutlets});

  @override
  $OutletCopyWith<$Res>? get nearestOutlet;
}

/// @nodoc
class __$$BrandImplCopyWithImpl<$Res>
    extends _$BrandCopyWithImpl<$Res, _$BrandImpl>
    implements _$$BrandImplCopyWith<$Res> {
  __$$BrandImplCopyWithImpl(
      _$BrandImpl _value, $Res Function(_$BrandImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? restaurantId = null,
    Object? name = null,
    Object? background = null,
    Object? description = freezed,
    Object? nearestOutlet = freezed,
    Object? logo = freezed,
    Object? serviceableOutlets = null,
  }) {
    return _then(_$BrandImpl(
      restaurantId: null == restaurantId
          ? _value.restaurantId
          : restaurantId // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      background: null == background
          ? _value.background
          : background // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      nearestOutlet: freezed == nearestOutlet
          ? _value.nearestOutlet
          : nearestOutlet // ignore: cast_nullable_to_non_nullable
              as Outlet?,
      logo: freezed == logo
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as String?,
      serviceableOutlets: null == serviceableOutlets
          ? _value._serviceableOutlets
          : serviceableOutlets // ignore: cast_nullable_to_non_nullable
              as List<Outlet>,
    ));
  }
}

/// @nodoc

class _$BrandImpl extends _Brand {
  const _$BrandImpl(
      {required this.restaurantId,
      required this.name,
      required this.background,
      required this.description,
      required this.nearestOutlet,
      required this.logo,
      final List<Outlet> serviceableOutlets = const <Outlet>[]})
      : _serviceableOutlets = serviceableOutlets,
        super._();

  @override
  final String restaurantId;
  @override
  final String name;
  @override
  final String background;
  @override
  final String? description;
  @override
  final Outlet? nearestOutlet;
  @override
  final String? logo;
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
    return 'Brand(restaurantId: $restaurantId, name: $name, background: $background, description: $description, nearestOutlet: $nearestOutlet, logo: $logo, serviceableOutlets: $serviceableOutlets)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BrandImpl &&
            (identical(other.restaurantId, restaurantId) ||
                other.restaurantId == restaurantId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.background, background) ||
                other.background == background) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.nearestOutlet, nearestOutlet) ||
                other.nearestOutlet == nearestOutlet) &&
            (identical(other.logo, logo) || other.logo == logo) &&
            const DeepCollectionEquality()
                .equals(other._serviceableOutlets, _serviceableOutlets));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      restaurantId,
      name,
      background,
      description,
      nearestOutlet,
      logo,
      const DeepCollectionEquality().hash(_serviceableOutlets));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BrandImplCopyWith<_$BrandImpl> get copyWith =>
      __$$BrandImplCopyWithImpl<_$BrandImpl>(this, _$identity);
}

abstract class _Brand extends Brand {
  const factory _Brand(
      {required final String restaurantId,
      required final String name,
      required final String background,
      required final String? description,
      required final Outlet? nearestOutlet,
      required final String? logo,
      final List<Outlet> serviceableOutlets}) = _$BrandImpl;
  const _Brand._() : super._();

  @override
  String get restaurantId;
  @override
  String get name;
  @override
  String get background;
  @override
  String? get description;
  @override
  Outlet? get nearestOutlet;
  @override
  String? get logo;
  @override
  List<Outlet> get serviceableOutlets;
  @override
  @JsonKey(ignore: true)
  _$$BrandImplCopyWith<_$BrandImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$Outlet {
  String get id => throw _privateConstructorUsedError;
  ({double distance, double latitude, double longitude}) get location =>
      throw _privateConstructorUsedError;
  String get outletAddress => throw _privateConstructorUsedError;
  List<String> get filterTags => throw _privateConstructorUsedError;
  ({TimeOfDay fromTime, TimeOfDay toTime}) get timing =>
      throw _privateConstructorUsedError;
  Brand? get parentBrand => throw _privateConstructorUsedError;
  bool get isAcceptingOrder => throw _privateConstructorUsedError;
  String? get rating => throw _privateConstructorUsedError;
  List<MenuSection> get menus => throw _privateConstructorUsedError;
  bool get isOpen => throw _privateConstructorUsedError;
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
      List<String> filterTags,
      ({TimeOfDay fromTime, TimeOfDay toTime}) timing,
      Brand? parentBrand,
      bool isAcceptingOrder,
      String? rating,
      List<MenuSection> menus,
      bool isOpen,
      int? ratingCount,
      double? distanceDelta});

  $BrandCopyWith<$Res>? get parentBrand;
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
    Object? filterTags = null,
    Object? timing = null,
    Object? parentBrand = freezed,
    Object? isAcceptingOrder = null,
    Object? rating = freezed,
    Object? menus = null,
    Object? isOpen = null,
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
      filterTags: null == filterTags
          ? _value.filterTags
          : filterTags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      timing: null == timing
          ? _value.timing
          : timing // ignore: cast_nullable_to_non_nullable
              as ({TimeOfDay fromTime, TimeOfDay toTime}),
      parentBrand: freezed == parentBrand
          ? _value.parentBrand
          : parentBrand // ignore: cast_nullable_to_non_nullable
              as Brand?,
      isAcceptingOrder: null == isAcceptingOrder
          ? _value.isAcceptingOrder
          : isAcceptingOrder // ignore: cast_nullable_to_non_nullable
              as bool,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as String?,
      menus: null == menus
          ? _value.menus
          : menus // ignore: cast_nullable_to_non_nullable
              as List<MenuSection>,
      isOpen: null == isOpen
          ? _value.isOpen
          : isOpen // ignore: cast_nullable_to_non_nullable
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

  @override
  @pragma('vm:prefer-inline')
  $BrandCopyWith<$Res>? get parentBrand {
    if (_value.parentBrand == null) {
      return null;
    }

    return $BrandCopyWith<$Res>(_value.parentBrand!, (value) {
      return _then(_value.copyWith(parentBrand: value) as $Val);
    });
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
      List<String> filterTags,
      ({TimeOfDay fromTime, TimeOfDay toTime}) timing,
      Brand? parentBrand,
      bool isAcceptingOrder,
      String? rating,
      List<MenuSection> menus,
      bool isOpen,
      int? ratingCount,
      double? distanceDelta});

  @override
  $BrandCopyWith<$Res>? get parentBrand;
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
    Object? filterTags = null,
    Object? timing = null,
    Object? parentBrand = freezed,
    Object? isAcceptingOrder = null,
    Object? rating = freezed,
    Object? menus = null,
    Object? isOpen = null,
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
      filterTags: null == filterTags
          ? _value._filterTags
          : filterTags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      timing: null == timing
          ? _value.timing
          : timing // ignore: cast_nullable_to_non_nullable
              as ({TimeOfDay fromTime, TimeOfDay toTime}),
      parentBrand: freezed == parentBrand
          ? _value.parentBrand
          : parentBrand // ignore: cast_nullable_to_non_nullable
              as Brand?,
      isAcceptingOrder: null == isAcceptingOrder
          ? _value.isAcceptingOrder
          : isAcceptingOrder // ignore: cast_nullable_to_non_nullable
              as bool,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as String?,
      menus: null == menus
          ? _value._menus
          : menus // ignore: cast_nullable_to_non_nullable
              as List<MenuSection>,
      isOpen: null == isOpen
          ? _value.isOpen
          : isOpen // ignore: cast_nullable_to_non_nullable
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
      required final List<String> filterTags,
      required this.timing,
      this.parentBrand,
      this.isAcceptingOrder = false,
      this.rating,
      final List<MenuSection> menus = const <MenuSection>[],
      this.isOpen = false,
      this.ratingCount,
      this.distanceDelta})
      : _filterTags = filterTags,
        _menus = menus;

  @override
  final String id;
  @override
  final ({double distance, double latitude, double longitude}) location;
  @override
  final String outletAddress;
  final List<String> _filterTags;
  @override
  List<String> get filterTags {
    if (_filterTags is EqualUnmodifiableListView) return _filterTags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_filterTags);
  }

  @override
  final ({TimeOfDay fromTime, TimeOfDay toTime}) timing;
  @override
  final Brand? parentBrand;
  @override
  @JsonKey()
  final bool isAcceptingOrder;
  @override
  final String? rating;
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
  final bool isOpen;
  @override
  final int? ratingCount;
  @override
  final double? distanceDelta;

  @override
  String toString() {
    return 'Outlet(id: $id, location: $location, outletAddress: $outletAddress, filterTags: $filterTags, timing: $timing, parentBrand: $parentBrand, isAcceptingOrder: $isAcceptingOrder, rating: $rating, menus: $menus, isOpen: $isOpen, ratingCount: $ratingCount, distanceDelta: $distanceDelta)';
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
            const DeepCollectionEquality()
                .equals(other._filterTags, _filterTags) &&
            (identical(other.timing, timing) || other.timing == timing) &&
            (identical(other.parentBrand, parentBrand) ||
                other.parentBrand == parentBrand) &&
            (identical(other.isAcceptingOrder, isAcceptingOrder) ||
                other.isAcceptingOrder == isAcceptingOrder) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            const DeepCollectionEquality().equals(other._menus, _menus) &&
            (identical(other.isOpen, isOpen) || other.isOpen == isOpen) &&
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
      const DeepCollectionEquality().hash(_filterTags),
      timing,
      parentBrand,
      isAcceptingOrder,
      rating,
      const DeepCollectionEquality().hash(_menus),
      isOpen,
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
      required final List<String> filterTags,
      required final ({TimeOfDay fromTime, TimeOfDay toTime}) timing,
      final Brand? parentBrand,
      final bool isAcceptingOrder,
      final String? rating,
      final List<MenuSection> menus,
      final bool isOpen,
      final int? ratingCount,
      final double? distanceDelta}) = _$OutletImpl;

  @override
  String get id;
  @override
  ({double distance, double latitude, double longitude}) get location;
  @override
  String get outletAddress;
  @override
  List<String> get filterTags;
  @override
  ({TimeOfDay fromTime, TimeOfDay toTime}) get timing;
  @override
  Brand? get parentBrand;
  @override
  bool get isAcceptingOrder;
  @override
  String? get rating;
  @override
  List<MenuSection> get menus;
  @override
  bool get isOpen;
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
