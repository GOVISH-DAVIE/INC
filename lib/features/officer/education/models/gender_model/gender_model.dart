import 'package:freezed_annotation/freezed_annotation.dart';

part 'gender_model.freezed.dart';
part 'gender_model.g.dart';

@freezed
class GenderModel with _$GenderModel {
  factory GenderModel({
    int? id,
    String? name,
    dynamic description,
    @JsonKey(name: 'created_at') DateTime? createdAt,
  }) = _GenderModel;

  factory GenderModel.fromJson(Map<String, dynamic> json) =>
      _$GenderModelFromJson(json);
}
