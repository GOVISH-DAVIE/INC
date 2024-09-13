// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'disaster_notification_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DisasterNotificationModelImpl _$$DisasterNotificationModelImplFromJson(
        Map<String, dynamic> json) =>
    _$DisasterNotificationModelImpl(
      title: json['title'] as String?,
      message: json['message'] == null
          ? null
          : Message.fromJson(json['message'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$DisasterNotificationModelImplToJson(
        _$DisasterNotificationModelImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'message': instance.message,
    };
