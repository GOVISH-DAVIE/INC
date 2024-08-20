// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'report_occurence_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ReportOccurenceModelImpl _$$ReportOccurenceModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ReportOccurenceModelImpl(
      id: (json['id'] as num?)?.toInt(),
      reportsId: (json['reportsId'] as num?)?.toInt(),
      description: json['description'] as String?,
      whoWasAffected: json['who_was_affected'] as String?,
      suspect: json['suspect'] as String?,
      villageId: (json['villageId'] as num?)?.toInt(),
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      report: json['report'] == null
          ? null
          : Report.fromJson(json['report'] as Map<String, dynamic>),
      village: json['village'] == null
          ? null
          : Village.fromJson(json['village'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ReportOccurenceModelImplToJson(
        _$ReportOccurenceModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'reportsId': instance.reportsId,
      'description': instance.description,
      'who_was_affected': instance.whoWasAffected,
      'suspect': instance.suspect,
      'villageId': instance.villageId,
      'created_at': instance.createdAt?.toIso8601String(),
      'report': instance.report,
      'village': instance.village,
    };
