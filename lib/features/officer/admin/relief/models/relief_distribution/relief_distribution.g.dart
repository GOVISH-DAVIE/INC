// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'relief_distribution.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ReliefDistributionImpl _$$ReliefDistributionImplFromJson(
        Map<String, dynamic> json) =>
    _$ReliefDistributionImpl(
      id: (json['id'] as num?)?.toInt(),
      typeOfRelief: json['type_of_relief'] as String?,
      quantityDistributed: json['quantity_distributed'] as String?,
      numberOfPeopleGiven: json['number_of_people_given'] as String?,
      villageId: (json['villageId'] as num?)?.toInt(),
      relief_date: json['relief_date'] as String?,
      area: json['area'] == null
          ? null
          : Area.fromJson(json['area'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ReliefDistributionImplToJson(
        _$ReliefDistributionImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type_of_relief': instance.typeOfRelief,
      'quantity_distributed': instance.quantityDistributed,
      'number_of_people_given': instance.numberOfPeopleGiven,
      'villageId': instance.villageId,
      'relief_date': instance.relief_date,
      'area': instance.area,
    };
