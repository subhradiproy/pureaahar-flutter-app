import 'package:freezed_annotation/freezed_annotation.dart';

part 'generated/choice_and_addons_model.freezed.dart';
part 'generated/choice_and_addons_model.g.dart';

@freezed
@JsonSerializable()
sealed class ChoiceModel with _$ChoiceModel {
  const factory ChoiceModel({
    @JsonKey(name: '_id') required String id,
    required String name,
    @Default(true) bool isRequired,
    @JsonKey(name: 'choiceDetails')
    @Default(<({bool isDefault, int additionalPrice, String name})>[])
    List<({bool isDefault, int additionalPrice, String name})> details,
  }) = _ChoiceModel;

  const ChoiceModel._();

  factory ChoiceModel.fromJson(Map<String, Object?> json) =>
      _$ChoiceModelFromJson(json);

  Map<String, Object?> toJson() => _$ChoiceModelToJson(this);
}

@freezed
@JsonSerializable()
sealed class Addons with _$Addons {
  const factory Addons({
    @JsonKey(name: '_id') required String id,
    required String name,
    @Default(0) int additionalPrice,
  }) = _Addons;

  const Addons._();

  factory Addons.fromJson(Map<String, Object?> json) => _$AddonsFromJson(json);

  Map<String, Object?> toJson() => _$AddonsToJson(this);
}
