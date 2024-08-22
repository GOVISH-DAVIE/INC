// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reports_category_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ReportsCategoryModelImpl _$$ReportsCategoryModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ReportsCategoryModelImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      description: json['description'] as String?,
      fields: (json['fields'] as List<dynamic>?)
          ?.map((e) => Field.fromJson(e as Map<String, dynamic>))
          .toList(),
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      reportOccurrence: json['ReportOccurrence'] as List<dynamic>?,
    );

Map<String, dynamic> _$$ReportsCategoryModelImplToJson(
        _$ReportsCategoryModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'fields': instance.fields,
      'created_at': instance.createdAt?.toIso8601String(),
      'ReportOccurrence': instance.reportOccurrence,
    };
