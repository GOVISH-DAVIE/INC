// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'village.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VillageImpl _$$VillageImplFromJson(Map<String, dynamic> json) =>
    _$VillageImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      description: json['description'] as String?,
      wardId: (json['wardId'] as num?)?.toInt(),
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
    );

Map<String, dynamic> _$$VillageImplToJson(_$VillageImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'wardId': instance.wardId,
      'created_at': instance.createdAt?.toIso8601String(),
    };
