// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'disaster_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DisasterModelImpl _$$DisasterModelImplFromJson(Map<String, dynamic> json) =>
    _$DisasterModelImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      description: json['description'] as String?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      disasterOCcurrence: (json['DisasterOCcurrence'] as List<dynamic>?)
          ?.map((e) => DisasterOCcurrence.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$DisasterModelImplToJson(_$DisasterModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'created_at': instance.createdAt?.toIso8601String(),
      'DisasterOCcurrence': instance.disasterOCcurrence,
    };
