import 'package:freezed_annotation/freezed_annotation.dart';

part 'generated/restaurant_banner_entity.freezed.dart';

@freezed
sealed class RestaurantBanner with _$RestaurantBanner {
  const factory RestaurantBanner({
    required String id,
    required String name,
    required String imageUrl,
  }) = _RestaurantBanner;
}
