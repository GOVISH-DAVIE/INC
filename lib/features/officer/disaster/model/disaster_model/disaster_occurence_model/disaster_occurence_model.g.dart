// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'disaster_occurence_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DisasterOccurenceModelImpl _$$DisasterOccurenceModelImplFromJson(
        Map<String, dynamic> json) =>
    _$DisasterOccurenceModelImpl(
      id: (json['id'] as num?)?.toInt(),
      disasterId: (json['disasterId'] as num?)?.toInt(),
      description: json['description'] as String?,
      dateAndTime: json['date_and_time'],
      image: json['image'] as String?,
      homesteads: (json['homesteads'] as num?)?.toInt(),
      deaths: (json['deaths'] as num?)?.toInt(),
      villageId: (json['villageId'] as num?)?.toInt(),
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      disaster: json['disaster'] == null
          ? null
          : Disaster.fromJson(json['disaster'] as Map<String, dynamic>),
      village: json['village'] == null
          ? null
          : Village.fromJson(json['village'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$DisasterOccurenceModelImplToJson(
        _$DisasterOccurenceModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'disasterId': instance.disasterId,
      'description': instance.description,
      'date_and_time': instance.dateAndTime,
      'image': instance.image,
      'homesteads': instance.homesteads,
      'deaths': instance.deaths,
      'villageId': instance.villageId,
      'created_at': instance.createdAt?.toIso8601String(),
      'disaster': instance.disaster,
      'village': instance.village,
    };
