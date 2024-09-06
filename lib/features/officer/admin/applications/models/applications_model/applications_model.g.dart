// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'applications_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ApplicationsModelImpl _$$ApplicationsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ApplicationsModelImpl(
      id: (json['id'] as num?)?.toInt(),
      applicationType: json['application_type'] as String?,
      dateOfApplication: json['date_of_application'] as String?,
      startDate: json['start_date'] as String?,
      endDate: json['end_date'] as String?,
      villageId: (json['villageId'] as num?)?.toInt(),
      village: json['village'] == null
          ? null
          : Village.fromJson(json['village'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ApplicationsModelImplToJson(
        _$ApplicationsModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'application_type': instance.applicationType,
      'date_of_application': instance.dateOfApplication,
      'start_date': instance.startDate,
      'end_date': instance.endDate,
      'villageId': instance.villageId,
      'village': instance.village,
    };
