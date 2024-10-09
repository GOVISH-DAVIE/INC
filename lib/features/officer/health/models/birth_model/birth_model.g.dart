// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'birth_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BirthModelImpl _$$BirthModelImplFromJson(Map<String, dynamic> json) =>
    _$BirthModelImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      parent: json['parent'] as String?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      villageId: (json['villageId'] as num?)?.toInt(),
      village: json['village'] == null
          ? null
          : Village.fromJson(json['village'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$BirthModelImplToJson(_$BirthModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'parent': instance.parent,
      'created_at': instance.createdAt?.toIso8601String(),
      'villageId': instance.villageId,
      'village': instance.village,
    };
