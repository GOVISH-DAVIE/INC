import 'package:freezed_annotation/freezed_annotation.dart';

part 'school_cartegories_model.freezed.dart';
part 'school_cartegories_model.g.dart';

@freezed
class SchoolCartegoriesModel with _$SchoolCartegoriesModel {
  factory SchoolCartegoriesModel({
    int? id,
    String? name,
    String? description,
    @JsonKey(name: 'created_at') DateTime? createdAt,
  }) = _SchoolCartegoriesModel;

  factory SchoolCartegoriesModel.fromJson(Map<String, dynamic> json) =>
      _$SchoolCartegoriesModelFromJson(json);
}
