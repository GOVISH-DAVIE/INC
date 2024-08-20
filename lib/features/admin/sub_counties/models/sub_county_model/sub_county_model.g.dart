// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sub_county_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SubCountyModelImpl _$$SubCountyModelImplFromJson(Map<String, dynamic> json) =>
    _$SubCountyModelImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      description: json['description'] as String?,
      gprs: json['gprs'] as String?,
      countyId: (json['countyId'] as num?)?.toInt(),
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      county: json['county'] == null
          ? null
          : County.fromJson(json['county'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$SubCountyModelImplToJson(
        _$SubCountyModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'gprs': instance.gprs,
      'countyId': instance.countyId,
      'created_at': instance.createdAt?.toIso8601String(),
      'county': instance.county,
    };
