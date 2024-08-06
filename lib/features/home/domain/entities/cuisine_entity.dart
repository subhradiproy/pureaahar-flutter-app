import 'package:freezed_annotation/freezed_annotation.dart';

part 'generated/cuisine_entity.freezed.dart';

@freezed
sealed class Cuisine with _$Cuisine {
  const factory Cuisine({
    required String id,
    required String name,
    required String imageUrl,
  }) = _Cuisine;
}
