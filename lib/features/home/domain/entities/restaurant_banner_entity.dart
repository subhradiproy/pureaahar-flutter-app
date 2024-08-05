import 'package:freezed_annotation/freezed_annotation.dart';

part 'generated/restaurant_banner_entity.freezed.dart';

@freezed
class RestaurantBannerEntity with _$RestaurantBannerEntity {
  const factory RestaurantBannerEntity({
    required String id,
    required String name,
    required String imageUrl,
  }) = _RestaurantBannerEntity;
}
