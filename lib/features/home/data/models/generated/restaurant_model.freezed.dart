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
  @JsonKey(name: 'restaurantId')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'restaurantName')
  String get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  OutletModel? get nearestOutlet => throw _privateConstructorUsedError;
  List<OutletModel> get serviceableOutlets =>
      throw _privateConstructorUsedError;
}

/// @nodoc

class _$RestaurantModelImpl extends _RestaurantModel {
  const _$RestaurantModelImpl(
      {@JsonKey(name: 'restaurantId') required this.id,
      @JsonKey(name: 'restaurantName') required this.name,
      this.description,
      this.nearestOutlet,
      final List<OutletModel> serviceableOutlets = const <OutletModel>[]})
      : _serviceableOutlets = serviceableOutlets,
        super._();

  @override
  @JsonKey(name: 'restaurantId')
  final String id;
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
    return 'RestaurantModel(id: $id, name: $name, description: $description, nearestOutlet: $nearestOutlet, serviceableOutlets: $serviceableOutlets)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RestaurantModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.nearestOutlet, nearestOutlet) ||
                other.nearestOutlet == nearestOutlet) &&
            const DeepCollectionEquality()
                .equals(other._serviceableOutlets, _serviceableOutlets));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, name, description,
      nearestOutlet, const DeepCollectionEquality().hash(_serviceableOutlets));
}

abstract class _RestaurantModel extends RestaurantModel {
  const factory _RestaurantModel(
      {@JsonKey(name: 'restaurantId') required final String id,
      @JsonKey(name: 'restaurantName') required final String name,
      final String? description,
      final OutletModel? nearestOutlet,
      final List<OutletModel> serviceableOutlets}) = _$RestaurantModelImpl;
  const _RestaurantModel._() : super._();

  @override
  @JsonKey(name: 'restaurantId')
  String get id;
  @override
  @JsonKey(name: 'restaurantName')
  String get name;
  @override
  String? get description;
  @override
  OutletModel? get nearestOutlet;
  @override
  List<OutletModel> get serviceableOutlets;
}

/// @nodoc
mixin _$OutletModel {
  String get restaurantId => throw _privateConstructorUsedError;
  ({double distance, double latitude, double longitude}) get outletLocation =>
      throw _privateConstructorUsedError;
  String get outletAddress => throw _privateConstructorUsedError;
  @TimeOfDayConvertor.twentyFourHour()
  ({TimeOfDay fromTime, TimeOfDay toTime}) get timing =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'acceptingOrder', defaultValue: false)
  bool get isAcceptingOrder => throw _privateConstructorUsedError;
  String? get rating => throw _privateConstructorUsedError;
  List<String> get certifications => throw _privateConstructorUsedError;
  List<MenuSectionModel> get menuSections => throw _privateConstructorUsedError;
  bool get isOpened => throw _privateConstructorUsedError;
  int? get ratingCount => throw _privateConstructorUsedError;
  double? get distanceDelta => throw _privateConstructorUsedError;
}

/// @nodoc

class _$OutletModelImpl extends _OutletModel {
  const _$OutletModelImpl(
      {required this.restaurantId,
      required this.outletLocation,
      required this.outletAddress,
      @TimeOfDayConvertor.twentyFourHour() required this.timing,
      @JsonKey(name: 'acceptingOrder', defaultValue: false)
      required this.isAcceptingOrder,
      this.rating,
      final List<String> certifications = const <String>[],
      final List<MenuSectionModel> menuSections = const <MenuSectionModel>[],
      this.isOpened = false,
      this.ratingCount,
      this.distanceDelta})
      : _certifications = certifications,
        _menuSections = menuSections,
        super._();

  @override
  final String restaurantId;
  @override
  final ({double distance, double latitude, double longitude}) outletLocation;
  @override
  final String outletAddress;
  @override
  @TimeOfDayConvertor.twentyFourHour()
  final ({TimeOfDay fromTime, TimeOfDay toTime}) timing;
  @override
  @JsonKey(name: 'acceptingOrder', defaultValue: false)
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
  final int? ratingCount;
  @override
  final double? distanceDelta;

  @override
  String toString() {
    return 'OutletModel(restaurantId: $restaurantId, outletLocation: $outletLocation, outletAddress: $outletAddress, timing: $timing, isAcceptingOrder: $isAcceptingOrder, rating: $rating, certifications: $certifications, menuSections: $menuSections, isOpened: $isOpened, ratingCount: $ratingCount, distanceDelta: $distanceDelta)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OutletModelImpl &&
            (identical(other.restaurantId, restaurantId) ||
                other.restaurantId == restaurantId) &&
            (identical(other.outletLocation, outletLocation) ||
                other.outletLocation == outletLocation) &&
            (identical(other.outletAddress, outletAddress) ||
                other.outletAddress == outletAddress) &&
            (identical(other.timing, timing) || other.timing == timing) &&
            (identical(other.isAcceptingOrder, isAcceptingOrder) ||
                other.isAcceptingOrder == isAcceptingOrder) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            const DeepCollectionEquality()
                .equals(other._certifications, _certifications) &&
            const DeepCollectionEquality()
                .equals(other._menuSections, _menuSections) &&
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
      restaurantId,
      outletLocation,
      outletAddress,
      timing,
      isAcceptingOrder,
      rating,
      const DeepCollectionEquality().hash(_certifications),
      const DeepCollectionEquality().hash(_menuSections),
      isOpened,
      ratingCount,
      distanceDelta);
}

abstract class _OutletModel extends OutletModel {
  const factory _OutletModel(
      {required final String restaurantId,
      required final ({
        double distance,
        double latitude,
        double longitude
      }) outletLocation,
      required final String outletAddress,
      @TimeOfDayConvertor.twentyFourHour()
      required final ({TimeOfDay fromTime, TimeOfDay toTime}) timing,
      @JsonKey(name: 'acceptingOrder', defaultValue: false)
      required final bool isAcceptingOrder,
      final String? rating,
      final List<String> certifications,
      final List<MenuSectionModel> menuSections,
      final bool isOpened,
      final int? ratingCount,
      final double? distanceDelta}) = _$OutletModelImpl;
  const _OutletModel._() : super._();

  @override
  String get restaurantId;
  @override
  ({double distance, double latitude, double longitude}) get outletLocation;
  @override
  String get outletAddress;
  @override
  @TimeOfDayConvertor.twentyFourHour()
  ({TimeOfDay fromTime, TimeOfDay toTime}) get timing;
  @override
  @JsonKey(name: 'acceptingOrder', defaultValue: false)
  bool get isAcceptingOrder;
  @override
  String? get rating;
  @override
  List<String> get certifications;
  @override
  List<MenuSectionModel> get menuSections;
  @override
  bool get isOpened;
  @override
  int? get ratingCount;
  @override
  double? get distanceDelta;
}

/// @nodoc
mixin _$MenuSectionModel {
  String get category => throw _privateConstructorUsedError;
  int get position => throw _privateConstructorUsedError;
  List<({String itemId, int position})> get items =>
      throw _privateConstructorUsedError;
}

/// @nodoc

class _$MenuSectionImpl extends _MenuSection {
  const _$MenuSectionImpl(
      {required this.category,
      this.position = 1,
      final List<({String itemId, int position})> items = const <MenuItem>[]})
      : _items = items,
        super._();

  @override
  final String category;
  @override
  @JsonKey()
  final int position;
  final List<({String itemId, int position})> _items;
  @override
  @JsonKey()
  List<({String itemId, int position})> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  String toString() {
    return 'MenuSectionModel(category: $category, position: $position, items: $items)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MenuSectionImpl &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.position, position) ||
                other.position == position) &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @override
  int get hashCode => Object.hash(runtimeType, category, position,
      const DeepCollectionEquality().hash(_items));
}

abstract class _MenuSection extends MenuSectionModel {
  const factory _MenuSection(
      {required final String category,
      final int position,
      final List<({String itemId, int position})> items}) = _$MenuSectionImpl;
  const _MenuSection._() : super._();

  @override
  String get category;
  @override
  int get position;
  @override
  List<({String itemId, int position})> get items;
}
