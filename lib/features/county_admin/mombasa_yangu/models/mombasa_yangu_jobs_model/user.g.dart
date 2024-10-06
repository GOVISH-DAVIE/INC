// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserImpl _$$UserImplFromJson(Map<String, dynamic> json) => _$UserImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      userType: json['user_type'] as String?,
      dateAndTime: json['date_and_time'] == null
          ? null
          : DateTime.parse(json['date_and_time'] as String),
      wardId: (json['wardId'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$UserImplToJson(_$UserImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'user_type': instance.userType,
      'date_and_time': instance.dateAndTime?.toIso8601String(),
      'wardId': instance.wardId,
    };
