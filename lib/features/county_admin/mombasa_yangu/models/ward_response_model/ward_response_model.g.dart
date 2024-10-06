// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ward_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WardResponseModelImpl _$$WardResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$WardResponseModelImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      code: json['code'] as String?,
      subCountyId: (json['subCountyId'] as num?)?.toInt(),
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      subCounty: json['subCounty'] == null
          ? null
          : SubCounty.fromJson(json['subCounty'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$WardResponseModelImplToJson(
        _$WardResponseModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'code': instance.code,
      'subCountyId': instance.subCountyId,
      'created_at': instance.createdAt?.toIso8601String(),
      'subCounty': instance.subCounty,
    };
