// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'school_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SchoolResponseModelImpl _$$SchoolResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$SchoolResponseModelImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      schoolCategoriesId: (json['schoolCategoriesId'] as num?)?.toInt(),
      wardId: (json['wardId'] as num?)?.toInt(),
      schoolCategories: json['school_categories'] == null
          ? null
          : SchoolCategories.fromJson(
              json['school_categories'] as Map<String, dynamic>),
      ward: json['ward'] == null
          ? null
          : Ward.fromJson(json['ward'] as Map<String, dynamic>),
      schoolStudents: (json['SchoolStudents'] as List<dynamic>?)
          ?.map((e) => SchoolStudent.fromJson(e as Map<String, dynamic>))
          .toList(),
      schoolTeachers: (json['SchoolTeachers'] as List<dynamic>?)
          ?.map((e) => SchoolTeacher.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$SchoolResponseModelImplToJson(
        _$SchoolResponseModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'created_at': instance.createdAt?.toIso8601String(),
      'schoolCategoriesId': instance.schoolCategoriesId,
      'wardId': instance.wardId,
      'school_categories': instance.schoolCategories,
      'ward': instance.ward,
      'SchoolStudents': instance.schoolStudents,
      'SchoolTeachers': instance.schoolTeachers,
    };
