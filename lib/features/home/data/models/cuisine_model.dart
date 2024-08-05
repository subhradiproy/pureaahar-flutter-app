import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/models/entity_mapper.dart';
import '../../domain/entities/cuisine_entity.dart';

part 'generated/cuisine_model.freezed.dart';
part 'generated/cuisine_model.g.dart';

@freezed
@JsonSerializable()
final class CuisineModel
    with _$CuisineModel
    implements EntityMapper<CuisineEntity> {
  const factory CuisineModel({
    @JsonKey(name: '_id') required String id,
    required String name,
    @JsonKey(name: 'cuisineImageUrl') required String url,
  }) = _RestaurantBannerDTO;

  factory CuisineModel.fromJson(Map<String, dynamic> json) =>
      _$CuisineModelFromJson(json);

  @override
  CuisineEntity toEntity() {
    return CuisineEntity(
      id: id,
      name: name,
      imageUrl: url,
    );
  }
}
