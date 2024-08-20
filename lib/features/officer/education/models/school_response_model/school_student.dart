import 'package:freezed_annotation/freezed_annotation.dart';

import 'gender.dart';

part 'school_student.freezed.dart';
part 'school_student.g.dart';

@freezed
class SchoolStudent with _$SchoolStudent {
  factory SchoolStudent({
    int? id,
    @JsonKey(name: 'student_number') int? studentNumber,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    int? genderId,
    int? male,
    int? female,
    int? other,
    int? schoolId,
    Gender? gender,
  }) = _SchoolStudent;

  factory SchoolStudent.fromJson(Map<String, dynamic> json) =>
      _$SchoolStudentFromJson(json);
}
