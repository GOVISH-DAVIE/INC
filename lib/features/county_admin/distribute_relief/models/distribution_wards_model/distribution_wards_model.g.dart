// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'distribution_wards_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DistributionWardsModelImpl _$$DistributionWardsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$DistributionWardsModelImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      code: json['code'] as String?,
      subCountyId: (json['subCountyId'] as num?)?.toInt(),
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
    );

Map<String, dynamic> _$$DistributionWardsModelImplToJson(
        _$DistributionWardsModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'code': instance.code,
      'subCountyId': instance.subCountyId,
      'created_at': instance.createdAt?.toIso8601String(),
    };
