import 'package:freezed_annotation/freezed_annotation.dart';

import 'school_categories.dart';
import 'school_student.dart';
import 'school_teacher.dart';
import 'ward.dart';

part 'school_response_model.freezed.dart';
part 'school_response_model.g.dart';

@freezed
class SchoolResponseModel with _$SchoolResponseModel {
  factory SchoolResponseModel({
    int? id,
    String? name,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    int? schoolCategoriesId,
    int? wardId,
    @JsonKey(name: 'school_categories') SchoolCategories? schoolCategories,
    Ward? ward,
    @JsonKey(name: 'SchoolStudents') List<SchoolStudent>? schoolStudents,
    @JsonKey(name: 'SchoolTeachers') List<SchoolTeacher>? schoolTeachers,
  }) = _SchoolResponseModel;

  factory SchoolResponseModel.fromJson(Map<String, dynamic> json) =>
      _$SchoolResponseModelFromJson(json);
}
