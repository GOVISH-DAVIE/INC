// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_user_officer_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AuthUserOfficerModelImpl _$$AuthUserOfficerModelImplFromJson(
        Map<String, dynamic> json) =>
    _$AuthUserOfficerModelImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      serviceNumber: (json['service_number'] as num?)?.toInt(),
      password: json['password'] as String?,
      profilePic: json['profile_pic'],
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      villageId: (json['villageId'] as num?)?.toInt(),
      village: json['village'] == null
          ? null
          : Village.fromJson(json['village'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AuthUserOfficerModelImplToJson(
        _$AuthUserOfficerModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'service_number': instance.serviceNumber,
      'password': instance.password,
      'profile_pic': instance.profilePic,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'villageId': instance.villageId,
      'village': instance.village,
    };
