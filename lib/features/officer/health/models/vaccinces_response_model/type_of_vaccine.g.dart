// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'type_of_vaccine.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TypeOfVaccineImpl _$$TypeOfVaccineImplFromJson(Map<String, dynamic> json) =>
    _$TypeOfVaccineImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
    );

Map<String, dynamic> _$$TypeOfVaccineImplToJson(_$TypeOfVaccineImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'created_at': instance.createdAt?.toIso8601String(),
    };
