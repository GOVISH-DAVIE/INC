// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'receive_relief_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ReceiveReliefModelImpl _$$ReceiveReliefModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ReceiveReliefModelImpl(
      id: (json['id'] as num?)?.toInt(),
      reliefType: json['relief_type'] as String?,
      quantity: (json['quantity'] as num?)?.toInt(),
      type: json['type'] as String?,
      source: json['source'] as String?,
      dateAndTime: json['date_and_time'] == null
          ? null
          : DateTime.parse(json['date_and_time'] as String),
    );

Map<String, dynamic> _$$ReceiveReliefModelImplToJson(
        _$ReceiveReliefModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'relief_type': instance.reliefType,
      'quantity': instance.quantity,
      'type': instance.type,
      'source': instance.source,
      'date_and_time': instance.dateAndTime?.toIso8601String(),
    };
