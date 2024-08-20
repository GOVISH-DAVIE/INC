// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'school_teacher.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SchoolTeacherImpl _$$SchoolTeacherImplFromJson(Map<String, dynamic> json) =>
    _$SchoolTeacherImpl(
      id: (json['id'] as num?)?.toInt(),
      teachersCount: (json['teachers_count'] as num?)?.toInt(),
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      schoolId: (json['schoolId'] as num?)?.toInt(),
      genderId: (json['genderId'] as num?)?.toInt(),
      male: (json['male'] as num?)?.toInt(),
      female: (json['female'] as num?)?.toInt(),
      other: (json['other'] as num?)?.toInt(),
      teacherDesignationId: (json['teacherDesignationId'] as num?)?.toInt(),
      gender: json['gender'] == null
          ? null
          : Gender.fromJson(json['gender'] as Map<String, dynamic>),
      designation: json['designation'] == null
          ? null
          : Designation.fromJson(json['designation'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$SchoolTeacherImplToJson(_$SchoolTeacherImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'teachers_count': instance.teachersCount,
      'created_at': instance.createdAt?.toIso8601String(),
      'schoolId': instance.schoolId,
      'genderId': instance.genderId,
      'male': instance.male,
      'female': instance.female,
      'other': instance.other,
      'teacherDesignationId': instance.teacherDesignationId,
      'gender': instance.gender,
      'designation': instance.designation,
    };
