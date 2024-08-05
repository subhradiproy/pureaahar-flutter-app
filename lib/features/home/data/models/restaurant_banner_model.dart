import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/models/entity_mapper.dart';
import '../../domain/entities/restaurant_banner_entity.dart';

part 'generated/restaurant_banner_model.freezed.dart';
part 'generated/restaurant_banner_model.g.dart';

@freezed
@JsonSerializable()
sealed class RestaurantBannerModel
    with _$RestaurantBannerModel
    implements EntityMapper<RestaurantBannerEntity> {
  const factory RestaurantBannerModel({
    @JsonKey(name: '_id') required String id,
    required String name,
    @JsonKey(name: 'bannerImageUrl') required String url,
  }) = _RestaurantBannerDTO;

  factory RestaurantBannerModel.fromJson(Map<String, dynamic> json) =>
      _$RestaurantBannerModelFromJson(json);

  @override
  RestaurantBannerEntity toEntity() {
    return RestaurantBannerEntity(
      id: id,
      name: name,
      imageUrl: url,
    );
  }
}
