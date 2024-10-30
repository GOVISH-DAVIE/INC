// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'distribution_recipient.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DistributionRecipientImpl _$$DistributionRecipientImplFromJson(
        Map<String, dynamic> json) =>
    _$DistributionRecipientImpl(
      id: (json['id'] as num?)?.toInt(),
      recipients: json['recipients'] as Map<String, dynamic>?,
      reliefDistributionId: (json['relief_distributionId'] as num?)?.toInt(),
      dateAndTime: json['date_and_time'] == null
          ? null
          : DateTime.parse(json['date_and_time'] as String),
    );

Map<String, dynamic> _$$DistributionRecipientImplToJson(
        _$DistributionRecipientImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'recipients': instance.recipients,
      'relief_distributionId': instance.reliefDistributionId,
      'date_and_time': instance.dateAndTime?.toIso8601String(),
    };
