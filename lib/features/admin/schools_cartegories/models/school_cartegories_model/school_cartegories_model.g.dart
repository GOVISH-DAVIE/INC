// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'school_cartegories_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SchoolCartegoriesModelImpl _$$SchoolCartegoriesModelImplFromJson(
        Map<String, dynamic> json) =>
    _$SchoolCartegoriesModelImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      description: json['description'] as String?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
    );

Map<String, dynamic> _$$SchoolCartegoriesModelImplToJson(
        _$SchoolCartegoriesModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'created_at': instance.createdAt?.toIso8601String(),
    };
