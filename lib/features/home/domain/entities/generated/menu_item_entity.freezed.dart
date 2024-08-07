// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../menu_item_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MenuItem {
  MenuOptions get options => throw _privateConstructorUsedError;
  String get categoryId => throw _privateConstructorUsedError;
  List<String> get cuisines => throw _privateConstructorUsedError;
  String get itemName => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  String get itemImageUrl => throw _privateConstructorUsedError;
  String? get itemDescription => throw _privateConstructorUsedError;
  List<({int discountPercent, bool isActive, int price})> get pricing =>
      throw _privateConstructorUsedError;
  List<({int rating, String userId})> get reviews =>
      throw _privateConstructorUsedError;
  int? get rating => throw _privateConstructorUsedError;
  int? get happyHourPrice => throw _privateConstructorUsedError;
  List<String> get tags => throw _privateConstructorUsedError;
  bool get isInStock => throw _privateConstructorUsedError;
  bool get isVeg => throw _privateConstructorUsedError;
  bool get isHappyHourItem => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MenuItemCopyWith<MenuItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MenuItemCopyWith<$Res> {
  factory $MenuItemCopyWith(MenuItem value, $Res Function(MenuItem) then) =
      _$MenuItemCopyWithImpl<$Res, MenuItem>;
  @useResult
  $Res call(
      {MenuOptions options,
      String categoryId,
      List<String> cuisines,
      String itemName,
      String status,
      String itemImageUrl,
      String? itemDescription,
      List<({int discountPercent, bool isActive, int price})> pricing,
      List<({int rating, String userId})> reviews,
      int? rating,
      int? happyHourPrice,
      List<String> tags,
      bool isInStock,
      bool isVeg,
      bool isHappyHourItem});

  $MenuOptionsCopyWith<$Res> get options;
}

/// @nodoc
class _$MenuItemCopyWithImpl<$Res, $Val extends MenuItem>
    implements $MenuItemCopyWith<$Res> {
  _$MenuItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? options = null,
    Object? categoryId = null,
    Object? cuisines = null,
    Object? itemName = null,
    Object? status = null,
    Object? itemImageUrl = null,
    Object? itemDescription = freezed,
    Object? pricing = null,
    Object? reviews = null,
    Object? rating = freezed,
    Object? happyHourPrice = freezed,
    Object? tags = null,
    Object? isInStock = null,
    Object? isVeg = null,
    Object? isHappyHourItem = null,
  }) {
    return _then(_value.copyWith(
      options: null == options
          ? _value.options
          : options // ignore: cast_nullable_to_non_nullable
              as MenuOptions,
      categoryId: null == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String,
      cuisines: null == cuisines
          ? _value.cuisines
          : cuisines // ignore: cast_nullable_to_non_nullable
              as List<String>,
      itemName: null == itemName
          ? _value.itemName
          : itemName // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      itemImageUrl: null == itemImageUrl
          ? _value.itemImageUrl
          : itemImageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      itemDescription: freezed == itemDescription
          ? _value.itemDescription
          : itemDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      pricing: null == pricing
          ? _value.pricing
          : pricing // ignore: cast_nullable_to_non_nullable
              as List<({int discountPercent, bool isActive, int price})>,
      reviews: null == reviews
          ? _value.reviews
          : reviews // ignore: cast_nullable_to_non_nullable
              as List<({int rating, String userId})>,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int?,
      happyHourPrice: freezed == happyHourPrice
          ? _value.happyHourPrice
          : happyHourPrice // ignore: cast_nullable_to_non_nullable
              as int?,
      tags: null == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      isInStock: null == isInStock
          ? _value.isInStock
          : isInStock // ignore: cast_nullable_to_non_nullable
              as bool,
      isVeg: null == isVeg
          ? _value.isVeg
          : isVeg // ignore: cast_nullable_to_non_nullable
              as bool,
      isHappyHourItem: null == isHappyHourItem
          ? _value.isHappyHourItem
          : isHappyHourItem // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MenuOptionsCopyWith<$Res> get options {
    return $MenuOptionsCopyWith<$Res>(_value.options, (value) {
      return _then(_value.copyWith(options: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MenuItemImplCopyWith<$Res>
    implements $MenuItemCopyWith<$Res> {
  factory _$$MenuItemImplCopyWith(
          _$MenuItemImpl value, $Res Function(_$MenuItemImpl) then) =
      __$$MenuItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {MenuOptions options,
      String categoryId,
      List<String> cuisines,
      String itemName,
      String status,
      String itemImageUrl,
      String? itemDescription,
      List<({int discountPercent, bool isActive, int price})> pricing,
      List<({int rating, String userId})> reviews,
      int? rating,
      int? happyHourPrice,
      List<String> tags,
      bool isInStock,
      bool isVeg,
      bool isHappyHourItem});

  @override
  $MenuOptionsCopyWith<$Res> get options;
}

/// @nodoc
class __$$MenuItemImplCopyWithImpl<$Res>
    extends _$MenuItemCopyWithImpl<$Res, _$MenuItemImpl>
    implements _$$MenuItemImplCopyWith<$Res> {
  __$$MenuItemImplCopyWithImpl(
      _$MenuItemImpl _value, $Res Function(_$MenuItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? options = null,
    Object? categoryId = null,
    Object? cuisines = null,
    Object? itemName = null,
    Object? status = null,
    Object? itemImageUrl = null,
    Object? itemDescription = freezed,
    Object? pricing = null,
    Object? reviews = null,
    Object? rating = freezed,
    Object? happyHourPrice = freezed,
    Object? tags = null,
    Object? isInStock = null,
    Object? isVeg = null,
    Object? isHappyHourItem = null,
  }) {
    return _then(_$MenuItemImpl(
      options: null == options
          ? _value.options
          : options // ignore: cast_nullable_to_non_nullable
              as MenuOptions,
      categoryId: null == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String,
      cuisines: null == cuisines
          ? _value._cuisines
          : cuisines // ignore: cast_nullable_to_non_nullable
              as List<String>,
      itemName: null == itemName
          ? _value.itemName
          : itemName // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      itemImageUrl: null == itemImageUrl
          ? _value.itemImageUrl
          : itemImageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      itemDescription: freezed == itemDescription
          ? _value.itemDescription
          : itemDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      pricing: null == pricing
          ? _value._pricing
          : pricing // ignore: cast_nullable_to_non_nullable
              as List<({int discountPercent, bool isActive, int price})>,
      reviews: null == reviews
          ? _value._reviews
          : reviews // ignore: cast_nullable_to_non_nullable
              as List<({int rating, String userId})>,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int?,
      happyHourPrice: freezed == happyHourPrice
          ? _value.happyHourPrice
          : happyHourPrice // ignore: cast_nullable_to_non_nullable
              as int?,
      tags: null == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      isInStock: null == isInStock
          ? _value.isInStock
          : isInStock // ignore: cast_nullable_to_non_nullable
              as bool,
      isVeg: null == isVeg
          ? _value.isVeg
          : isVeg // ignore: cast_nullable_to_non_nullable
              as bool,
      isHappyHourItem: null == isHappyHourItem
          ? _value.isHappyHourItem
          : isHappyHourItem // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$MenuItemImpl implements _MenuItem {
  const _$MenuItemImpl(
      {required this.options,
      required this.categoryId,
      required final List<String> cuisines,
      required this.itemName,
      required this.status,
      required this.itemImageUrl,
      this.itemDescription,
      final List<({int discountPercent, bool isActive, int price})> pricing =
          const <({int price, int discountPercent, bool isActive})>[],
      final List<({int rating, String userId})> reviews = const <({
        int rating,
        String userId
      })>[],
      this.rating,
      this.happyHourPrice,
      final List<String> tags = const <String>[],
      this.isInStock = false,
      this.isVeg = false,
      this.isHappyHourItem = false})
      : _cuisines = cuisines,
        _pricing = pricing,
        _reviews = reviews,
        _tags = tags;

  @override
  final MenuOptions options;
  @override
  final String categoryId;
  final List<String> _cuisines;
  @override
  List<String> get cuisines {
    if (_cuisines is EqualUnmodifiableListView) return _cuisines;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cuisines);
  }

  @override
  final String itemName;
  @override
  final String status;
  @override
  final String itemImageUrl;
  @override
  final String? itemDescription;
  final List<({int discountPercent, bool isActive, int price})> _pricing;
  @override
  @JsonKey()
  List<({int discountPercent, bool isActive, int price})> get pricing {
    if (_pricing is EqualUnmodifiableListView) return _pricing;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_pricing);
  }

  final List<({int rating, String userId})> _reviews;
  @override
  @JsonKey()
  List<({int rating, String userId})> get reviews {
    if (_reviews is EqualUnmodifiableListView) return _reviews;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_reviews);
  }

  @override
  final int? rating;
  @override
  final int? happyHourPrice;
  final List<String> _tags;
  @override
  @JsonKey()
  List<String> get tags {
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tags);
  }

  @override
  @JsonKey()
  final bool isInStock;
  @override
  @JsonKey()
  final bool isVeg;
  @override
  @JsonKey()
  final bool isHappyHourItem;

  @override
  String toString() {
    return 'MenuItem(options: $options, categoryId: $categoryId, cuisines: $cuisines, itemName: $itemName, status: $status, itemImageUrl: $itemImageUrl, itemDescription: $itemDescription, pricing: $pricing, reviews: $reviews, rating: $rating, happyHourPrice: $happyHourPrice, tags: $tags, isInStock: $isInStock, isVeg: $isVeg, isHappyHourItem: $isHappyHourItem)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MenuItemImpl &&
            (identical(other.options, options) || other.options == options) &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            const DeepCollectionEquality().equals(other._cuisines, _cuisines) &&
            (identical(other.itemName, itemName) ||
                other.itemName == itemName) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.itemImageUrl, itemImageUrl) ||
                other.itemImageUrl == itemImageUrl) &&
            (identical(other.itemDescription, itemDescription) ||
                other.itemDescription == itemDescription) &&
            const DeepCollectionEquality().equals(other._pricing, _pricing) &&
            const DeepCollectionEquality().equals(other._reviews, _reviews) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.happyHourPrice, happyHourPrice) ||
                other.happyHourPrice == happyHourPrice) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            (identical(other.isInStock, isInStock) ||
                other.isInStock == isInStock) &&
            (identical(other.isVeg, isVeg) || other.isVeg == isVeg) &&
            (identical(other.isHappyHourItem, isHappyHourItem) ||
                other.isHappyHourItem == isHappyHourItem));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      options,
      categoryId,
      const DeepCollectionEquality().hash(_cuisines),
      itemName,
      status,
      itemImageUrl,
      itemDescription,
      const DeepCollectionEquality().hash(_pricing),
      const DeepCollectionEquality().hash(_reviews),
      rating,
      happyHourPrice,
      const DeepCollectionEquality().hash(_tags),
      isInStock,
      isVeg,
      isHappyHourItem);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MenuItemImplCopyWith<_$MenuItemImpl> get copyWith =>
      __$$MenuItemImplCopyWithImpl<_$MenuItemImpl>(this, _$identity);
}

abstract class _MenuItem implements MenuItem {
  const factory _MenuItem(
      {required final MenuOptions options,
      required final String categoryId,
      required final List<String> cuisines,
      required final String itemName,
      required final String status,
      required final String itemImageUrl,
      final String? itemDescription,
      final List<({int discountPercent, bool isActive, int price})> pricing,
      final List<({int rating, String userId})> reviews,
      final int? rating,
      final int? happyHourPrice,
      final List<String> tags,
      final bool isInStock,
      final bool isVeg,
      final bool isHappyHourItem}) = _$MenuItemImpl;

  @override
  MenuOptions get options;
  @override
  String get categoryId;
  @override
  List<String> get cuisines;
  @override
  String get itemName;
  @override
  String get status;
  @override
  String get itemImageUrl;
  @override
  String? get itemDescription;
  @override
  List<({int discountPercent, bool isActive, int price})> get pricing;
  @override
  List<({int rating, String userId})> get reviews;
  @override
  int? get rating;
  @override
  int? get happyHourPrice;
  @override
  List<String> get tags;
  @override
  bool get isInStock;
  @override
  bool get isVeg;
  @override
  bool get isHappyHourItem;
  @override
  @JsonKey(ignore: true)
  _$$MenuItemImplCopyWith<_$MenuItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$MenuOptions {
  @JsonKey(name: '_id')
  String get id => throw _privateConstructorUsedError;
  List<Choice> get choices => throw _privateConstructorUsedError;
  List<Addons> get addons => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MenuOptionsCopyWith<MenuOptions> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MenuOptionsCopyWith<$Res> {
  factory $MenuOptionsCopyWith(
          MenuOptions value, $Res Function(MenuOptions) then) =
      _$MenuOptionsCopyWithImpl<$Res, MenuOptions>;
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String id,
      List<Choice> choices,
      List<Addons> addons});
}

/// @nodoc
class _$MenuOptionsCopyWithImpl<$Res, $Val extends MenuOptions>
    implements $MenuOptionsCopyWith<$Res> {
  _$MenuOptionsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? choices = null,
    Object? addons = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      choices: null == choices
          ? _value.choices
          : choices // ignore: cast_nullable_to_non_nullable
              as List<Choice>,
      addons: null == addons
          ? _value.addons
          : addons // ignore: cast_nullable_to_non_nullable
              as List<Addons>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MenuOptionsImplCopyWith<$Res>
    implements $MenuOptionsCopyWith<$Res> {
  factory _$$MenuOptionsImplCopyWith(
          _$MenuOptionsImpl value, $Res Function(_$MenuOptionsImpl) then) =
      __$$MenuOptionsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String id,
      List<Choice> choices,
      List<Addons> addons});
}

/// @nodoc
class __$$MenuOptionsImplCopyWithImpl<$Res>
    extends _$MenuOptionsCopyWithImpl<$Res, _$MenuOptionsImpl>
    implements _$$MenuOptionsImplCopyWith<$Res> {
  __$$MenuOptionsImplCopyWithImpl(
      _$MenuOptionsImpl _value, $Res Function(_$MenuOptionsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? choices = null,
    Object? addons = null,
  }) {
    return _then(_$MenuOptionsImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      choices: null == choices
          ? _value._choices
          : choices // ignore: cast_nullable_to_non_nullable
              as List<Choice>,
      addons: null == addons
          ? _value._addons
          : addons // ignore: cast_nullable_to_non_nullable
              as List<Addons>,
    ));
  }
}

/// @nodoc

class _$MenuOptionsImpl implements _MenuOptions {
  const _$MenuOptionsImpl(
      {@JsonKey(name: '_id') required this.id,
      final List<Choice> choices = const <Choice>[],
      final List<Addons> addons = const <Addons>[]})
      : _choices = choices,
        _addons = addons;

  @override
  @JsonKey(name: '_id')
  final String id;
  final List<Choice> _choices;
  @override
  @JsonKey()
  List<Choice> get choices {
    if (_choices is EqualUnmodifiableListView) return _choices;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_choices);
  }

  final List<Addons> _addons;
  @override
  @JsonKey()
  List<Addons> get addons {
    if (_addons is EqualUnmodifiableListView) return _addons;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_addons);
  }

  @override
  String toString() {
    return 'MenuOptions(id: $id, choices: $choices, addons: $addons)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MenuOptionsImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other._choices, _choices) &&
            const DeepCollectionEquality().equals(other._addons, _addons));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_choices),
      const DeepCollectionEquality().hash(_addons));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MenuOptionsImplCopyWith<_$MenuOptionsImpl> get copyWith =>
      __$$MenuOptionsImplCopyWithImpl<_$MenuOptionsImpl>(this, _$identity);
}

abstract class _MenuOptions implements MenuOptions {
  const factory _MenuOptions(
      {@JsonKey(name: '_id') required final String id,
      final List<Choice> choices,
      final List<Addons> addons}) = _$MenuOptionsImpl;

  @override
  @JsonKey(name: '_id')
  String get id;
  @override
  List<Choice> get choices;
  @override
  List<Addons> get addons;
  @override
  @JsonKey(ignore: true)
  _$$MenuOptionsImplCopyWith<_$MenuOptionsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
