// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wards_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WardsModelImpl _$$WardsModelImplFromJson(Map<String, dynamic> json) =>
    _$WardsModelImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      description: json['description'] as String?,
      gprs: json['gprs'] as String?,
      subCountyId: (json['subCountyId'] as num?)?.toInt(),
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      subCounty: json['subCounty'] == null
          ? null
          : SubCounty.fromJson(json['subCounty'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$WardsModelImplToJson(_$WardsModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'gprs': instance.gprs,
      'subCountyId': instance.subCountyId,
      'created_at': instance.createdAt?.toIso8601String(),
      'subCounty': instance.subCounty,
    };
