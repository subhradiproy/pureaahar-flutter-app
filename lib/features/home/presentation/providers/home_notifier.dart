import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/exceptions/app_exception.dart';
import '../../../../core/models/entity_mapper.dart';
import '../../data/models/brand_model.dart';
import '../../data/models/cuisine_model.dart';
import '../../data/models/restaurant_banner_model.dart';
import '../../data/repositories/home_content_repository_impl.dart';
import '../../domain/entities/brand_entity.dart';
import '../../domain/entities/cuisine_entity.dart';
import '../../domain/entities/restaurant_banner_entity.dart';

part 'generated/home_notifier.g.dart';

@riverpod
FutureOr<List<RestaurantBanner>> bannerList(BannerListRef ref) async => ref
    .read(homeRepositoryProvider)
    .getAdBanners()
    .map((List<RestaurantBannerModel> r) => r.toEntityList())
    .getOrElse((Failure l) => throw l)
    .run();

@riverpod
FutureOr<List<Cuisine>> cuisineList(CuisineListRef ref) async => ref
    .read(homeRepositoryProvider)
    .getCuisines()
    .map((List<CuisineModel> r) => r.toEntityList())
    .getOrElse((Failure l) => throw l)
    .run();

@riverpod
FutureOr<List<Brand>> restaurantList(RestaurantListRef ref) async => ref
    .read(homeRepositoryProvider)
    .getRestaurants(latitude: '22.5764753', longitude: '88.4306861')
    .map((List<BrandModel> r) => r.toEntityList())
    .getOrElse((Failure l) => throw l)
    .run();
