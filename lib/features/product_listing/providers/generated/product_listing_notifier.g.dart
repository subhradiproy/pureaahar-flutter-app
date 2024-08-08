// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../product_listing_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$outletDataHash() => r'15c14be91c6b64ebe10435509cdabebc401b609e';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// See also [outletData].
@ProviderFor(outletData)
const outletDataProvider = OutletDataFamily();

/// See also [outletData].
class OutletDataFamily extends Family<AsyncValue<Outlet>> {
  /// See also [outletData].
  const OutletDataFamily();

  /// See also [outletData].
  OutletDataProvider call(
    String outletId,
  ) {
    return OutletDataProvider(
      outletId,
    );
  }

  @override
  OutletDataProvider getProviderOverride(
    covariant OutletDataProvider provider,
  ) {
    return call(
      provider.outletId,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'outletDataProvider';
}

/// See also [outletData].
class OutletDataProvider extends AutoDisposeFutureProvider<Outlet> {
  /// See also [outletData].
  OutletDataProvider(
    String outletId,
  ) : this._internal(
          (ref) => outletData(
            ref as OutletDataRef,
            outletId,
          ),
          from: outletDataProvider,
          name: r'outletDataProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$outletDataHash,
          dependencies: OutletDataFamily._dependencies,
          allTransitiveDependencies:
              OutletDataFamily._allTransitiveDependencies,
          outletId: outletId,
        );

  OutletDataProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.outletId,
  }) : super.internal();

  final String outletId;

  @override
  Override overrideWith(
    FutureOr<Outlet> Function(OutletDataRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: OutletDataProvider._internal(
        (ref) => create(ref as OutletDataRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        outletId: outletId,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<Outlet> createElement() {
    return _OutletDataProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is OutletDataProvider && other.outletId == outletId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, outletId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin OutletDataRef on AutoDisposeFutureProviderRef<Outlet> {
  /// The parameter `outletId` of this provider.
  String get outletId;
}

class _OutletDataProviderElement
    extends AutoDisposeFutureProviderElement<Outlet> with OutletDataRef {
  _OutletDataProviderElement(super.provider);

  @override
  String get outletId => (origin as OutletDataProvider).outletId;
}

String _$productListingNotifierHash() =>
    r'c7f6ba0e2c9545fecef8ad3b34f7fbc5c2bd05ef';

abstract class _$ProductListingNotifier
    extends BuildlessAutoDisposeAsyncNotifier<Outlet> {
  late final String outletId;

  FutureOr<Outlet> build(
    String outletId,
  );
}

/// See also [ProductListingNotifier].
@ProviderFor(ProductListingNotifier)
const productListingNotifierProvider = ProductListingNotifierFamily();

/// See also [ProductListingNotifier].
class ProductListingNotifierFamily extends Family<AsyncValue<Outlet>> {
  /// See also [ProductListingNotifier].
  const ProductListingNotifierFamily();

  /// See also [ProductListingNotifier].
  ProductListingNotifierProvider call(
    String outletId,
  ) {
    return ProductListingNotifierProvider(
      outletId,
    );
  }

  @override
  ProductListingNotifierProvider getProviderOverride(
    covariant ProductListingNotifierProvider provider,
  ) {
    return call(
      provider.outletId,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'productListingNotifierProvider';
}

/// See also [ProductListingNotifier].
class ProductListingNotifierProvider
    extends AutoDisposeAsyncNotifierProviderImpl<ProductListingNotifier,
        Outlet> {
  /// See also [ProductListingNotifier].
  ProductListingNotifierProvider(
    String outletId,
  ) : this._internal(
          () => ProductListingNotifier()..outletId = outletId,
          from: productListingNotifierProvider,
          name: r'productListingNotifierProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$productListingNotifierHash,
          dependencies: ProductListingNotifierFamily._dependencies,
          allTransitiveDependencies:
              ProductListingNotifierFamily._allTransitiveDependencies,
          outletId: outletId,
        );

  ProductListingNotifierProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.outletId,
  }) : super.internal();

  final String outletId;

  @override
  FutureOr<Outlet> runNotifierBuild(
    covariant ProductListingNotifier notifier,
  ) {
    return notifier.build(
      outletId,
    );
  }

  @override
  Override overrideWith(ProductListingNotifier Function() create) {
    return ProviderOverride(
      origin: this,
      override: ProductListingNotifierProvider._internal(
        () => create()..outletId = outletId,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        outletId: outletId,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<ProductListingNotifier, Outlet>
      createElement() {
    return _ProductListingNotifierProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ProductListingNotifierProvider &&
        other.outletId == outletId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, outletId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin ProductListingNotifierRef on AutoDisposeAsyncNotifierProviderRef<Outlet> {
  /// The parameter `outletId` of this provider.
  String get outletId;
}

class _ProductListingNotifierProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<ProductListingNotifier,
        Outlet> with ProductListingNotifierRef {
  _ProductListingNotifierProviderElement(super.provider);

  @override
  String get outletId => (origin as ProductListingNotifierProvider).outletId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
