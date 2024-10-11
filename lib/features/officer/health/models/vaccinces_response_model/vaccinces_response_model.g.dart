// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vaccinces_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VaccincesResponseModelImpl _$$VaccincesResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$VaccincesResponseModelImpl(
      id: (json['id'] as num?)?.toInt(),
      nameOfKid: json['name_of_kid'] as String?,
      age: json['age'] as String?,
      nameOfMother: json['name_of_mother'] as String?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      vaccineTypeId: (json['vaccineTypeId'] as num?)?.toInt(),
      villageId: (json['villageId'] as num?)?.toInt(),
      typeOfVaccine: json['type_of_vaccine'] == null
          ? null
          : TypeOfVaccine.fromJson(
              json['type_of_vaccine'] as Map<String, dynamic>),
      village: json['village'] == null
          ? null
          : Village.fromJson(json['village'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$VaccincesResponseModelImplToJson(
        _$VaccincesResponseModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name_of_kid': instance.nameOfKid,
      'age': instance.age,
      'name_of_mother': instance.nameOfMother,
      'created_at': instance.createdAt?.toIso8601String(),
      'vaccineTypeId': instance.vaccineTypeId,
      'villageId': instance.villageId,
      'type_of_vaccine': instance.typeOfVaccine,
      'village': instance.village,
    };
