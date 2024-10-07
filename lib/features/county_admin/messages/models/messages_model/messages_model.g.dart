// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'messages_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MessagesModelImpl _$$MessagesModelImplFromJson(Map<String, dynamic> json) =>
    _$MessagesModelImpl(
      id: (json['id'] as num?)?.toInt(),
      summary: json['summary'] as String?,
      context: json['context'] as String?,
      type: json['type'] as String?,
      keyPoints: (json['key_points'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      urgency: json['urgency'] as String?,
      messageId: (json['messageId'] as num?)?.toInt(),
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      message: json['message'] == null
          ? null
          : Message.fromJson(json['message'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$MessagesModelImplToJson(_$MessagesModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'summary': instance.summary,
      'context': instance.context,
      'type': instance.type,
      'key_points': instance.keyPoints,
      'urgency': instance.urgency,
      'messageId': instance.messageId,
      'created_at': instance.createdAt?.toIso8601String(),
      'message': instance.message,
    };
