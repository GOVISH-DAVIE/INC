// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'teacher_designation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TeacherDesignationImpl _$$TeacherDesignationImplFromJson(
        Map<String, dynamic> json) =>
    _$TeacherDesignationImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      description: json['description'] as String?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
    );

Map<String, dynamic> _$$TeacherDesignationImplToJson(
        _$TeacherDesignationImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'created_at': instance.createdAt?.toIso8601String(),
    };
