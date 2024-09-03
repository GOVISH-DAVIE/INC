// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'projects_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProjectsModelImpl _$$ProjectsModelImplFromJson(Map<String, dynamic> json) =>
    _$ProjectsModelImpl(
      id: (json['id'] as num?)?.toInt(),
      projectName: json['project_name'] as String?,
      startDate: json['start_date'] as String?,
      proposedDate: json['proposed_date'] as String?,
      contractorName: json['contractor_name'] as String?,
      projectStatus: json['project_status'] as String?,
      image: json['image'] as String?,
      alerts: json['alerts'] as String?,
    );

Map<String, dynamic> _$$ProjectsModelImplToJson(_$ProjectsModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'project_name': instance.projectName,
      'start_date': instance.startDate,
      'proposed_date': instance.proposedDate,
      'contractor_name': instance.contractorName,
      'project_status': instance.projectStatus,
      'image': instance.image,
      'alerts': instance.alerts,
    };
