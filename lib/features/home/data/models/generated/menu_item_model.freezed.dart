// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../menu_item_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MenuItemModel {
  MenuOptionsModel get options => throw _privateConstructorUsedError;
  String get outletId => throw _privateConstructorUsedError;
  String get categoryId => throw _privateConstructorUsedError;
  List<String> get cuisines => throw _privateConstructorUsedError;
  String get itemName => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  String? get itemDescription => throw _privateConstructorUsedError;
  String? get itemImageUrl => throw _privateConstructorUsedError;
  List<({int discountPercent, bool isActive, int price})> get pricing =>
      throw _privateConstructorUsedError;
  List<({int rating, String userId})> get reviews =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'Rating')
  int? get rating => throw _privateConstructorUsedError;
  int? get happyHourPrice => throw _privateConstructorUsedError;
  List<String> get tags => throw _privateConstructorUsedError;
  bool get isInStock => throw _privateConstructorUsedError;
  bool get isHappyHourItem => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MenuItemModelCopyWith<MenuItemModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MenuItemModelCopyWith<$Res> {
  factory $MenuItemModelCopyWith(
          MenuItemModel value, $Res Function(MenuItemModel) then) =
      _$MenuItemModelCopyWithImpl<$Res, MenuItemModel>;
  @useResult
  $Res call(
      {MenuOptionsModel options,
      String outletId,
      String categoryId,
      List<String> cuisines,
      String itemName,
      String status,
      String? itemDescription,
      String? itemImageUrl,
      List<({int discountPercent, bool isActive, int price})> pricing,
      List<({int rating, String userId})> reviews,
      @JsonKey(name: 'Rating') int? rating,
      int? happyHourPrice,
      List<String> tags,
      bool isInStock,
      bool isHappyHourItem});

  $MenuOptionsModelCopyWith<$Res> get options;
}

/// @nodoc
class _$MenuItemModelCopyWithImpl<$Res, $Val extends MenuItemModel>
    implements $MenuItemModelCopyWith<$Res> {
  _$MenuItemModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? options = null,
    Object? outletId = null,
    Object? categoryId = null,
    Object? cuisines = null,
    Object? itemName = null,
    Object? status = null,
    Object? itemDescription = freezed,
    Object? itemImageUrl = freezed,
    Object? pricing = null,
    Object? reviews = null,
    Object? rating = freezed,
    Object? happyHourPrice = freezed,
    Object? tags = null,
    Object? isInStock = null,
    Object? isHappyHourItem = null,
  }) {
    return _then(_value.copyWith(
      options: null == options
          ? _value.options
          : options // ignore: cast_nullable_to_non_nullable
              as MenuOptionsModel,
      outletId: null == outletId
          ? _value.outletId
          : outletId // ignore: cast_nullable_to_non_nullable
              as String,
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
      itemDescription: freezed == itemDescription
          ? _value.itemDescription
          : itemDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      itemImageUrl: freezed == itemImageUrl
          ? _value.itemImageUrl
          : itemImageUrl // ignore: cast_nullable_to_non_nullable
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
      isHappyHourItem: null == isHappyHourItem
          ? _value.isHappyHourItem
          : isHappyHourItem // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MenuOptionsModelCopyWith<$Res> get options {
    return $MenuOptionsModelCopyWith<$Res>(_value.options, (value) {
      return _then(_value.copyWith(options: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MenuItemModelImplCopyWith<$Res>
    implements $MenuItemModelCopyWith<$Res> {
  factory _$$MenuItemModelImplCopyWith(
          _$MenuItemModelImpl value, $Res Function(_$MenuItemModelImpl) then) =
      __$$MenuItemModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {MenuOptionsModel options,
      String outletId,
      String categoryId,
      List<String> cuisines,
      String itemName,
      String status,
      String? itemDescription,
      String? itemImageUrl,
      List<({int discountPercent, bool isActive, int price})> pricing,
      List<({int rating, String userId})> reviews,
      @JsonKey(name: 'Rating') int? rating,
      int? happyHourPrice,
      List<String> tags,
      bool isInStock,
      bool isHappyHourItem});

  @override
  $MenuOptionsModelCopyWith<$Res> get options;
}

/// @nodoc
class __$$MenuItemModelImplCopyWithImpl<$Res>
    extends _$MenuItemModelCopyWithImpl<$Res, _$MenuItemModelImpl>
    implements _$$MenuItemModelImplCopyWith<$Res> {
  __$$MenuItemModelImplCopyWithImpl(
      _$MenuItemModelImpl _value, $Res Function(_$MenuItemModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? options = null,
    Object? outletId = null,
    Object? categoryId = null,
    Object? cuisines = null,
    Object? itemName = null,
    Object? status = null,
    Object? itemDescription = freezed,
    Object? itemImageUrl = freezed,
    Object? pricing = null,
    Object? reviews = null,
    Object? rating = freezed,
    Object? happyHourPrice = freezed,
    Object? tags = null,
    Object? isInStock = null,
    Object? isHappyHourItem = null,
  }) {
    return _then(_$MenuItemModelImpl(
      options: null == options
          ? _value.options
          : options // ignore: cast_nullable_to_non_nullable
              as MenuOptionsModel,
      outletId: null == outletId
          ? _value.outletId
          : outletId // ignore: cast_nullable_to_non_nullable
              as String,
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
      itemDescription: freezed == itemDescription
          ? _value.itemDescription
          : itemDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      itemImageUrl: freezed == itemImageUrl
          ? _value.itemImageUrl
          : itemImageUrl // ignore: cast_nullable_to_non_nullable
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
      isHappyHourItem: null == isHappyHourItem
          ? _value.isHappyHourItem
          : isHappyHourItem // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$MenuItemModelImpl extends _MenuItemModel {
  const _$MenuItemModelImpl(
      {required this.options,
      required this.outletId,
      required this.categoryId,
      required final List<String> cuisines,
      required this.itemName,
      required this.status,
      this.itemDescription,
      this.itemImageUrl,
      final List<({int discountPercent, bool isActive, int price})> pricing =
          const <({int price, int discountPercent, bool isActive})>[],
      final List<({int rating, String userId})> reviews = const <({
        int rating,
        String userId
      })>[],
      @JsonKey(name: 'Rating') this.rating,
      this.happyHourPrice,
      final List<String> tags = const <String>[],
      this.isInStock = false,
      this.isHappyHourItem = false})
      : _cuisines = cuisines,
        _pricing = pricing,
        _reviews = reviews,
        _tags = tags,
        super._();

  @override
  final MenuOptionsModel options;
  @override
  final String outletId;
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
  final String? itemDescription;
  @override
  final String? itemImageUrl;
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
  @JsonKey(name: 'Rating')
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
  final bool isHappyHourItem;

  @override
  String toString() {
    return 'MenuItemModel(options: $options, outletId: $outletId, categoryId: $categoryId, cuisines: $cuisines, itemName: $itemName, status: $status, itemDescription: $itemDescription, itemImageUrl: $itemImageUrl, pricing: $pricing, reviews: $reviews, rating: $rating, happyHourPrice: $happyHourPrice, tags: $tags, isInStock: $isInStock, isHappyHourItem: $isHappyHourItem)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MenuItemModelImpl &&
            (identical(other.options, options) || other.options == options) &&
            (identical(other.outletId, outletId) ||
                other.outletId == outletId) &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            const DeepCollectionEquality().equals(other._cuisines, _cuisines) &&
            (identical(other.itemName, itemName) ||
                other.itemName == itemName) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.itemDescription, itemDescription) ||
                other.itemDescription == itemDescription) &&
            (identical(other.itemImageUrl, itemImageUrl) ||
                other.itemImageUrl == itemImageUrl) &&
            const DeepCollectionEquality().equals(other._pricing, _pricing) &&
            const DeepCollectionEquality().equals(other._reviews, _reviews) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.happyHourPrice, happyHourPrice) ||
                other.happyHourPrice == happyHourPrice) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            (identical(other.isInStock, isInStock) ||
                other.isInStock == isInStock) &&
            (identical(other.isHappyHourItem, isHappyHourItem) ||
                other.isHappyHourItem == isHappyHourItem));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      options,
      outletId,
      categoryId,
      const DeepCollectionEquality().hash(_cuisines),
      itemName,
      status,
      itemDescription,
      itemImageUrl,
      const DeepCollectionEquality().hash(_pricing),
      const DeepCollectionEquality().hash(_reviews),
      rating,
      happyHourPrice,
      const DeepCollectionEquality().hash(_tags),
      isInStock,
      isHappyHourItem);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MenuItemModelImplCopyWith<_$MenuItemModelImpl> get copyWith =>
      __$$MenuItemModelImplCopyWithImpl<_$MenuItemModelImpl>(this, _$identity);
}

abstract class _MenuItemModel extends MenuItemModel {
  const factory _MenuItemModel(
      {required final MenuOptionsModel options,
      required final String outletId,
      required final String categoryId,
      required final List<String> cuisines,
      required final String itemName,
      required final String status,
      final String? itemDescription,
      final String? itemImageUrl,
      final List<({int discountPercent, bool isActive, int price})> pricing,
      final List<({int rating, String userId})> reviews,
      @JsonKey(name: 'Rating') final int? rating,
      final int? happyHourPrice,
      final List<String> tags,
      final bool isInStock,
      final bool isHappyHourItem}) = _$MenuItemModelImpl;
  const _MenuItemModel._() : super._();

  @override
  MenuOptionsModel get options;
  @override
  String get outletId;
  @override
  String get categoryId;
  @override
  List<String> get cuisines;
  @override
  String get itemName;
  @override
  String get status;
  @override
  String? get itemDescription;
  @override
  String? get itemImageUrl;
  @override
  List<({int discountPercent, bool isActive, int price})> get pricing;
  @override
  List<({int rating, String userId})> get reviews;
  @override
  @JsonKey(name: 'Rating')
  int? get rating;
  @override
  int? get happyHourPrice;
  @override
  List<String> get tags;
  @override
  bool get isInStock;
  @override
  bool get isHappyHourItem;
  @override
  @JsonKey(ignore: true)
  _$$MenuItemModelImplCopyWith<_$MenuItemModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$MenuOptionsModel {
  @JsonKey(name: '_id')
  String get id => throw _privateConstructorUsedError;
  List<Choice> get choices => throw _privateConstructorUsedError;
  List<Addons> get addons => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MenuOptionsModelCopyWith<MenuOptionsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MenuOptionsModelCopyWith<$Res> {
  factory $MenuOptionsModelCopyWith(
          MenuOptionsModel value, $Res Function(MenuOptionsModel) then) =
      _$MenuOptionsModelCopyWithImpl<$Res, MenuOptionsModel>;
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String id,
      List<Choice> choices,
      List<Addons> addons});
}

/// @nodoc
class _$MenuOptionsModelCopyWithImpl<$Res, $Val extends MenuOptionsModel>
    implements $MenuOptionsModelCopyWith<$Res> {
  _$MenuOptionsModelCopyWithImpl(this._value, this._then);

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
abstract class _$$MenuOptionsModelImplCopyWith<$Res>
    implements $MenuOptionsModelCopyWith<$Res> {
  factory _$$MenuOptionsModelImplCopyWith(_$MenuOptionsModelImpl value,
          $Res Function(_$MenuOptionsModelImpl) then) =
      __$$MenuOptionsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String id,
      List<Choice> choices,
      List<Addons> addons});
}

/// @nodoc
class __$$MenuOptionsModelImplCopyWithImpl<$Res>
    extends _$MenuOptionsModelCopyWithImpl<$Res, _$MenuOptionsModelImpl>
    implements _$$MenuOptionsModelImplCopyWith<$Res> {
  __$$MenuOptionsModelImplCopyWithImpl(_$MenuOptionsModelImpl _value,
      $Res Function(_$MenuOptionsModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? choices = null,
    Object? addons = null,
  }) {
    return _then(_$MenuOptionsModelImpl(
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

class _$MenuOptionsModelImpl extends _MenuOptionsModel {
  const _$MenuOptionsModelImpl(
      {@JsonKey(name: '_id') required this.id,
      final List<Choice> choices = const <Choice>[],
      final List<Addons> addons = const <Addons>[]})
      : _choices = choices,
        _addons = addons,
        super._();

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
    return 'MenuOptionsModel(id: $id, choices: $choices, addons: $addons)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MenuOptionsModelImpl &&
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
  _$$MenuOptionsModelImplCopyWith<_$MenuOptionsModelImpl> get copyWith =>
      __$$MenuOptionsModelImplCopyWithImpl<_$MenuOptionsModelImpl>(
          this, _$identity);
}

abstract class _MenuOptionsModel extends MenuOptionsModel {
  const factory _MenuOptionsModel(
      {@JsonKey(name: '_id') required final String id,
      final List<Choice> choices,
      final List<Addons> addons}) = _$MenuOptionsModelImpl;
  const _MenuOptionsModel._() : super._();

  @override
  @JsonKey(name: '_id')
  String get id;
  @override
  List<Choice> get choices;
  @override
  List<Addons> get addons;
  @override
  @JsonKey(ignore: true)
  _$$MenuOptionsModelImplCopyWith<_$MenuOptionsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
