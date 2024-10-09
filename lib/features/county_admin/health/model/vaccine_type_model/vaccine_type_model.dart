import 'package:freezed_annotation/freezed_annotation.dart';

part 'vaccine_type_model.freezed.dart';
part 'vaccine_type_model.g.dart';

@freezed
class VaccineTypeModel with _$VaccineTypeModel {
  factory VaccineTypeModel({
    int? id,
    String? name,
    @JsonKey(name: 'created_at') DateTime? createdAt,
  }) = _VaccineTypeModel;

  factory VaccineTypeModel.fromJson(Map<String, dynamic> json) =>
      _$VaccineTypeModelFromJson(json);
}
