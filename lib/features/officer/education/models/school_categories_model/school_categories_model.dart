import 'package:freezed_annotation/freezed_annotation.dart';

part 'school_categories_model.freezed.dart';
part 'school_categories_model.g.dart';

@freezed
class SchoolCategoriesModel with _$SchoolCategoriesModel {
  factory SchoolCategoriesModel({
    int? id,
    String? name,
    String? description,
    @JsonKey(name: 'created_at') DateTime? createdAt,
  }) = _SchoolCategoriesModel;

  factory SchoolCategoriesModel.fromJson(Map<String, dynamic> json) =>
      _$SchoolCategoriesModelFromJson(json);
}
