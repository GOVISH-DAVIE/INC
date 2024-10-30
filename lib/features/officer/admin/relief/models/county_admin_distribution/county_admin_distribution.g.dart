// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'county_admin_distribution.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CountyAdminDistributionImpl _$$CountyAdminDistributionImplFromJson(
        Map<String, dynamic> json) =>
    _$CountyAdminDistributionImpl(
      id: (json['id'] as num?)?.toInt(),
      reliefType: json['relief_type'] as String?,
      quantity: (json['quantity'] as num?)?.toInt(),
      type: json['type'] as String?,
      wardId: (json['wardId'] as num?)?.toInt(),
      dateAndTime: json['date_and_time'] == null
          ? null
          : DateTime.parse(json['date_and_time'] as String),
      ward: json['ward'] == null
          ? null
          : Ward.fromJson(json['ward'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CountyAdminDistributionImplToJson(
        _$CountyAdminDistributionImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'relief_type': instance.reliefType,
      'quantity': instance.quantity,
      'type': instance.type,
      'wardId': instance.wardId,
      'date_and_time': instance.dateAndTime?.toIso8601String(),
      'ward': instance.ward,
    };
