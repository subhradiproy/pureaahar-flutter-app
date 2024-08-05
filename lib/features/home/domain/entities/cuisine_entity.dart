import 'package:freezed_annotation/freezed_annotation.dart';

part 'generated/cuisine_entity.freezed.dart';

@freezed
sealed class CuisineEntity with _$CuisineEntity {
  const factory CuisineEntity({
    required String id,
    required String name,
    required String imageUrl,
  }) = _CuisineEntity;
}
