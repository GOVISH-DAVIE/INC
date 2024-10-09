// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vaccine_type_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VaccineTypeModelImpl _$$VaccineTypeModelImplFromJson(
        Map<String, dynamic> json) =>
    _$VaccineTypeModelImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
    );

Map<String, dynamic> _$$VaccineTypeModelImplToJson(
        _$VaccineTypeModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'created_at': instance.createdAt?.toIso8601String(),
    };
