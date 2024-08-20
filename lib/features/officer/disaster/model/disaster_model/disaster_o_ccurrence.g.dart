// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'disaster_o_ccurrence.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DisasterOCcurrenceImpl _$$DisasterOCcurrenceImplFromJson(
        Map<String, dynamic> json) =>
    _$DisasterOCcurrenceImpl(
      id: (json['id'] as num?)?.toInt(),
      disasterId: (json['disasterId'] as num?)?.toInt(),
      description: json['description'] as String?,
      homesteads: (json['homesteads'] as num?)?.toInt(),
      deaths: (json['deaths'] as num?)?.toInt(),
      villageId: (json['villageId'] as num?)?.toInt(),
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
    );

Map<String, dynamic> _$$DisasterOCcurrenceImplToJson(
        _$DisasterOCcurrenceImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'disasterId': instance.disasterId,
      'description': instance.description,
      'homesteads': instance.homesteads,
      'deaths': instance.deaths,
      'villageId': instance.villageId,
      'created_at': instance.createdAt?.toIso8601String(),
    };
