// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MessageImpl _$$MessageImplFromJson(Map<String, dynamic> json) =>
    _$MessageImpl(
      id: (json['id'] as num?)?.toInt(),
      reportsId: (json['reportsId'] as num?)?.toInt(),
      details: json['details'] as Map<String, dynamic>?,
      villageId: (json['villageId'] as num?)?.toInt(),
      image: json['image'] as String?,
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

Map<String, dynamic> _$$MessageImplToJson(_$MessageImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'reportsId': instance.reportsId,
      'details': instance.details,
      'villageId': instance.villageId,
      'image': instance.image,
      'created_at': instance.createdAt?.toIso8601String(),
      'report': instance.report,
      'village': instance.village,
    };
