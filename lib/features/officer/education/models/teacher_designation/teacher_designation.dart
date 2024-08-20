import 'package:freezed_annotation/freezed_annotation.dart';

part 'teacher_designation.freezed.dart';
part 'teacher_designation.g.dart';

@freezed
class TeacherDesignation with _$TeacherDesignation {
  factory TeacherDesignation({
    int? id,
    String? name,
    String? description,
    @JsonKey(name: 'created_at') DateTime? createdAt,
  }) = _TeacherDesignation;

  factory TeacherDesignation.fromJson(Map<String, dynamic> json) =>
      _$TeacherDesignationFromJson(json);
}
