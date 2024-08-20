// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'school_cartegories.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SchoolCartegoriesImpl _$$SchoolCartegoriesImplFromJson(
        Map<String, dynamic> json) =>
    _$SchoolCartegoriesImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      description: json['description'] as String?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
    );

Map<String, dynamic> _$$SchoolCartegoriesImplToJson(
        _$SchoolCartegoriesImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'created_at': instance.createdAt?.toIso8601String(),
    };
