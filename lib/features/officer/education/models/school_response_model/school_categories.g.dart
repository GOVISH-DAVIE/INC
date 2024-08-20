// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'school_categories.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SchoolCategoriesImpl _$$SchoolCategoriesImplFromJson(
        Map<String, dynamic> json) =>
    _$SchoolCategoriesImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      description: json['description'] as String?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
    );

Map<String, dynamic> _$$SchoolCategoriesImplToJson(
        _$SchoolCategoriesImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'created_at': instance.createdAt?.toIso8601String(),
    };
