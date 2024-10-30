// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recipients.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RecipientsImpl _$$RecipientsImplFromJson(Map<String, dynamic> json) =>
    _$RecipientsImpl(
      typeOfRelief: json['type_of_relief'] as String?,
      recipientName1: json['recipient_name_1'] as String?,
      recipientContactDetails1: json['recipient_contact_details_1'] as String?,
    );

Map<String, dynamic> _$$RecipientsImplToJson(_$RecipientsImpl instance) =>
    <String, dynamic>{
      'type_of_relief': instance.typeOfRelief,
      'recipient_name_1': instance.recipientName1,
      'recipient_contact_details_1': instance.recipientContactDetails1,
    };
