// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sub_county.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SubCountyImpl _$$SubCountyImplFromJson(Map<String, dynamic> json) =>
    _$SubCountyImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      description: json['description'] as String?,
      gprs: json['gprs'] as String?,
      countyId: (json['countyId'] as num?)?.toInt(),
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
    );

Map<String, dynamic> _$$SubCountyImplToJson(_$SubCountyImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'gprs': instance.gprs,
      'countyId': instance.countyId,
      'created_at': instance.createdAt?.toIso8601String(),
    };
