// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'security_notifications_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SecurityNotificationsModelImpl _$$SecurityNotificationsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$SecurityNotificationsModelImpl(
      title: json['title'] as String?,
      message: json['message'] == null
          ? null
          : Message.fromJson(json['message'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$SecurityNotificationsModelImplToJson(
        _$SecurityNotificationsModelImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'message': instance.message,
    };
