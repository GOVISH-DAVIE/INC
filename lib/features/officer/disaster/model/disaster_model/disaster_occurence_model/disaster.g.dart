// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'disaster.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DisasterImpl _$$DisasterImplFromJson(Map<String, dynamic> json) =>
    _$DisasterImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      description: json['description'] as String?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
    );

Map<String, dynamic> _$$DisasterImplToJson(_$DisasterImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'created_at': instance.createdAt?.toIso8601String(),
    };
