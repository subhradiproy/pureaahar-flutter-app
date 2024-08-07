// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../home_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$bannerListHash() => r'fc94bf1680c71c77114645a4a982e215aa749dd8';

/// See also [bannerList].
@ProviderFor(bannerList)
final bannerListProvider =
    AutoDisposeFutureProvider<List<RestaurantBanner>>.internal(
  bannerList,
  name: r'bannerListProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$bannerListHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef BannerListRef = AutoDisposeFutureProviderRef<List<RestaurantBanner>>;
String _$cuisineListHash() => r'dbd9f4b06069afa6002c47e63c5f80522e6d89d7';

/// See also [cuisineList].
@ProviderFor(cuisineList)
final cuisineListProvider = AutoDisposeFutureProvider<List<Cuisine>>.internal(
  cuisineList,
  name: r'cuisineListProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$cuisineListHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef CuisineListRef = AutoDisposeFutureProviderRef<List<Cuisine>>;
String _$restaurantListHash() => r'eec532ff81a1197d3c2fb9a75ae3cd04b5f13a18';

/// See also [restaurantList].
@ProviderFor(restaurantList)
final restaurantListProvider = AutoDisposeFutureProvider<List<Brand>>.internal(
  restaurantList,
  name: r'restaurantListProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$restaurantListHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef RestaurantListRef = AutoDisposeFutureProviderRef<List<Brand>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
