import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../app/typedefs/typedefs.dart';
import '../../../../core/exceptions/app_exception.dart';
import '../../../../core/providers/global_providers.dart';
import '../../../../core/services/api_service.dart';
import '../../domain/repositories/home_content_repository.dart';
import '../models/brand_model.dart';
import '../models/cuisine_model.dart';
import '../models/restaurant_banner_model.dart';

part 'generated/home_content_repository_impl.g.dart';

@riverpod
HomeContentRepository homeRepository(HomeRepositoryRef ref) =>
    HomeContentRepositoryImpl(api: ref.watch(apiServiceProvider));

class HomeContentRepositoryImpl implements HomeContentRepository {
  const HomeContentRepositoryImpl({
    required ApiService api,
  }) : _client = api;

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
      () async => _client
          .get<JSON>('/v1/api/restaurants/cuisines')
          .then((Response<JSON> json) => CuisineModel.fromJsonList(json.data)),
      Failure.parseError,
    );
  }

  @override
  TaskEitherFailure<List<BrandModel>> getRestaurants({
    required String latitude,
    required String longitude,
  }) =>
      TaskEitherFailure<List<BrandModel>>.tryCatch(
        () async => _client.post<JSON>(
          '/v1/api/restaurants/landing-page-restaurants',
          data: <String, String>{
            'latitude': '22.5764753',
            'longitude': '88.4306861',
          },
        ).then((Response<JSON> r) => BrandModel.fromJsonList(r.data)),
        Failure.parseError,
      );

  @override
  TaskEitherFailure<OutletModel> getOutletById(String outletId) {
    return TaskEitherFailure<OutletModel>.tryCatch(
      () async => _client
          .get<JSON>('/v1/api/restaurants/outlets/$outletId')
          .then((Response<JSON> json) => OutletModel.fromJson(json.data!)),
      Failure.parseError,
    );
  }
}
