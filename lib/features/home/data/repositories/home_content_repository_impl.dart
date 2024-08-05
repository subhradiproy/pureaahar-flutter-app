import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../app/typedefs/typedefs.dart';
import '../../../../core/exceptions/app_exception.dart';
import '../../../../core/providers/global_providers.dart';
import '../../../../core/services/api_service.dart';
import '../../domain/repositories/home_content_repository.dart';
import '../models/cuisine_model.dart';
import '../models/restaurant_banner_model.dart';

part 'generated/home_content_repository_impl.g.dart';

@riverpod
HomeContentRepository homeRepository(HomeRepositoryRef ref) =>
    HomeContentRepositoryImpl(api: ref.watch(apiServiceProvider));

class HomeContentRepositoryImpl implements HomeContentRepository {
  const HomeContentRepositoryImpl({required ApiService api}) : _client = api;

  final ApiService _client;

  @override
  TaskEitherFailure<List<RestaurantBannerModel>> getAdBanners() {
    return TaskEitherFailure<List<RestaurantBannerModel>>.tryCatch(
      () async => _client.get<JSON>('/v1/api/restaurants/banners').then(
        (Response<JSON> json) {
          final List<Object?>? banners = json.data?['data'] as List<Object?>?;
          if (banners == null) return <RestaurantBannerModel>[];
          return banners
              .cast<JSON>()
              .map(RestaurantBannerModel.fromJson)
              .toList();
        },
      ),
      Failure.parseError,
    );
  }

  @override
  TaskEitherFailure<List<CuisineModel>> getCuisines() {
    return TaskEitherFailure<List<CuisineModel>>.tryCatch(
      () async => _client.get<JSON>('/v1/api/restaurants/cuisines').then(
        (Response<JSON> json) {
          final List<Object?>? cuisines = json.data?['data'] as List<Object?>?;
          if (cuisines == null) return <CuisineModel>[];
          return cuisines.cast<JSON>().map(CuisineModel.fromJson).toList();
        },
      ),
      Failure.parseError,
    );
  }
}
