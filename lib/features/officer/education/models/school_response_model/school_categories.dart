import 'package:freezed_annotation/freezed_annotation.dart';

part 'school_categories.freezed.dart';
part 'school_categories.g.dart';

@freezed
class SchoolCategories with _$SchoolCategories {
  factory SchoolCategories({
    int? id,
    String? name,
    String? description,
    @JsonKey(name: 'created_at') DateTime? createdAt,
  }) = _SchoolCategories;

  factory SchoolCategories.fromJson(Map<String, dynamic> json) =>
      _$SchoolCategoriesFromJson(json);
}
