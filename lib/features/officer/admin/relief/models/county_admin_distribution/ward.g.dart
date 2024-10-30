// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ward.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WardImpl _$$WardImplFromJson(Map<String, dynamic> json) => _$WardImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      code: json['code'] as String?,
      subCountyId: (json['subCountyId'] as num?)?.toInt(),
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      village: (json['Village'] as List<dynamic>?)
          ?.map((e) => Village.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$WardImplToJson(_$WardImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'code': instance.code,
      'subCountyId': instance.subCountyId,
      'created_at': instance.createdAt?.toIso8601String(),
      'Village': instance.village,
    };
