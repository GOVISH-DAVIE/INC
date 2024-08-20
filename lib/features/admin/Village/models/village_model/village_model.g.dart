// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'village_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VillageModelImpl _$$VillageModelImplFromJson(Map<String, dynamic> json) =>
    _$VillageModelImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      description: json['description'],
      wardId: (json['wardId'] as num?)?.toInt(),
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      ward: json['ward'] == null
          ? null
          : Ward.fromJson(json['ward'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$VillageModelImplToJson(_$VillageModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'wardId': instance.wardId,
      'created_at': instance.createdAt?.toIso8601String(),
      'ward': instance.ward,
    };
