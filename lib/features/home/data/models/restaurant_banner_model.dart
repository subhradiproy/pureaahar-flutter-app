import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/models/entity_mapper.dart';
import '../../domain/entities/restaurant_banner_entity.dart';

part 'generated/restaurant_banner_model.freezed.dart';
part 'generated/restaurant_banner_model.g.dart';

@freezed
@JsonSerializable()
sealed class RestaurantBannerModel
    with _$RestaurantBannerModel
    implements EntityMapper<RestaurantBanner> {
  const factory RestaurantBannerModel({
    @JsonKey(name: '_id') required String id,
    required String name,
    @JsonKey(name: 'bannerImageUrl') required String url,
  }) = _RestaurantBannerModel;

  const RestaurantBannerModel._();

  factory RestaurantBannerModel.fromJson(Map<String, Object?> json) =>
      _$RestaurantBannerModelFromJson(json);

  @override
  RestaurantBanner toEntity() {
    return RestaurantBanner(
      id: id,
      name: name,
      imageUrl: url,
    );
  }
}
