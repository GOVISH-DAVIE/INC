// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pregnat_moms_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PregnatMomsModelImpl _$$PregnatMomsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PregnatMomsModelImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      kidsToBore: (json['kids_to_bore'] as num?)?.toInt(),
      villageId: (json['villageId'] as num?)?.toInt(),
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      village: json['village'] == null
          ? null
          : Village.fromJson(json['village'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PregnatMomsModelImplToJson(
        _$PregnatMomsModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'kids_to_bore': instance.kidsToBore,
      'villageId': instance.villageId,
      'created_at': instance.createdAt?.toIso8601String(),
      'village': instance.village,
    };
