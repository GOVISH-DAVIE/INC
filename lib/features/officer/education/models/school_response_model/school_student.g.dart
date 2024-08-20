// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'school_student.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SchoolStudentImpl _$$SchoolStudentImplFromJson(Map<String, dynamic> json) =>
    _$SchoolStudentImpl(
      id: (json['id'] as num?)?.toInt(),
      studentNumber: (json['student_number'] as num?)?.toInt(),
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      genderId: (json['genderId'] as num?)?.toInt(),
      male: (json['male'] as num?)?.toInt(),
      female: (json['female'] as num?)?.toInt(),
      other: (json['other'] as num?)?.toInt(),
      schoolId: (json['schoolId'] as num?)?.toInt(),
      gender: json['gender'] == null
          ? null
          : Gender.fromJson(json['gender'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$SchoolStudentImplToJson(_$SchoolStudentImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'student_number': instance.studentNumber,
      'created_at': instance.createdAt?.toIso8601String(),
      'genderId': instance.genderId,
      'male': instance.male,
      'female': instance.female,
      'other': instance.other,
      'schoolId': instance.schoolId,
      'gender': instance.gender,
    };
