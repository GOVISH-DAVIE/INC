import 'package:freezed_annotation/freezed_annotation.dart';

import 'designation.dart';
import 'gender.dart';

part 'school_teacher.freezed.dart';
part 'school_teacher.g.dart';

@freezed
class SchoolTeacher with _$SchoolTeacher {
  factory SchoolTeacher({
    int? id,
    @JsonKey(name: 'teachers_count') int? teachersCount,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    int? schoolId,
    int? genderId,
    int? male,
    int? female,
    int? other,
    int? teacherDesignationId,
    Gender? gender,
    Designation? designation,
  }) = _SchoolTeacher;

  factory SchoolTeacher.fromJson(Map<String, dynamic> json) =>
      _$SchoolTeacherFromJson(json);
}
