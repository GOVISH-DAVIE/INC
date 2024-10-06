// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mombasa_yangu_jobs_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MombasaYanguJobsModelImpl _$$MombasaYanguJobsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$MombasaYanguJobsModelImpl(
      id: (json['id'] as num?)?.toInt(),
      job: json['job'] as String?,
      dateAndTime: json['date_and_time'] == null
          ? null
          : DateTime.parse(json['date_and_time'] as String),
      mombasaYanguId: (json['mombasaYanguId'] as num?)?.toInt(),
      wardId: (json['wardId'] as num?)?.toInt(),
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
      ward: json['ward'] == null
          ? null
          : Ward.fromJson(json['ward'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$MombasaYanguJobsModelImplToJson(
        _$MombasaYanguJobsModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'job': instance.job,
      'date_and_time': instance.dateAndTime?.toIso8601String(),
      'mombasaYanguId': instance.mombasaYanguId,
      'wardId': instance.wardId,
      'user': instance.user,
      'ward': instance.ward,
    };
