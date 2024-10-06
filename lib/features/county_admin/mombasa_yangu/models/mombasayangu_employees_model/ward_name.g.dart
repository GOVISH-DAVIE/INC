// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ward_name.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WardNameImpl _$$WardNameImplFromJson(Map<String, dynamic> json) =>
    _$WardNameImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      code: json['code'] as String?,
      subCountyId: (json['subCountyId'] as num?)?.toInt(),
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
    );

Map<String, dynamic> _$$WardNameImplToJson(_$WardNameImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'code': instance.code,
      'subCountyId': instance.subCountyId,
      'created_at': instance.createdAt?.toIso8601String(),
    };
