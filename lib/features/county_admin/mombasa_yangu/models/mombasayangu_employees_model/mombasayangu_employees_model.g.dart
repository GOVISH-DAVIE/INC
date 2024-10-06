// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mombasayangu_employees_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MombasayanguEmployeesModelImpl _$$MombasayanguEmployeesModelImplFromJson(
        Map<String, dynamic> json) =>
    _$MombasayanguEmployeesModelImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      userType: json['user_type'] as String?,
      dateAndTime: json['date_and_time'] == null
          ? null
          : DateTime.parse(json['date_and_time'] as String),
      wardId: (json['wardId'] as num?)?.toInt(),
      wardName: json['ward_name'] == null
          ? null
          : WardName.fromJson(json['ward_name'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$MombasayanguEmployeesModelImplToJson(
        _$MombasayanguEmployeesModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'user_type': instance.userType,
      'date_and_time': instance.dateAndTime?.toIso8601String(),
      'wardId': instance.wardId,
      'ward_name': instance.wardName,
    };
