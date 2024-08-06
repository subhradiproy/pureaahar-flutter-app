import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/models/entity_mapper.dart';
import '../../domain/entities/cuisine_entity.dart';

part 'generated/cuisine_model.freezed.dart';
part 'generated/cuisine_model.g.dart';

@freezed
@JsonSerializable()
sealed class CuisineModel with _$CuisineModel implements EntityMapper<Cuisine> {
  const factory CuisineModel({
    @JsonKey(name: '_id') required String id,
    required String name,
    @JsonKey(name: 'cuisineImageUrl') required String url,
  }) = _CuisineModel;

  const CuisineModel._();

  factory CuisineModel.fromJson(Map<String, Object?> json) =>
      _$CuisineModelFromJson(json);

  static List<CuisineModel> fromJsonList(Map<String, Object?>? json) {
    return switch (json) {
      null => <CuisineModel>[],
      {'data': final List<Map<String, Object?>>? list} =>
        list?.map(CuisineModel.fromJson).toList() ?? <CuisineModel>[],
      _ => throw const FormatException('Invalid JSON format'),
    };
  }

  @override
  Cuisine toEntity() {
    return Cuisine(
      id: id,
      name: name,
      imageUrl: url,
    );
  }
}
