import 'package:freezed_annotation/freezed_annotation.dart';

import 'message.dart';

part 'disaster_notification_model.freezed.dart';
part 'disaster_notification_model.g.dart';

@freezed
class DisasterNotificationModel with _$DisasterNotificationModel {
  factory DisasterNotificationModel({
    String? title,
    Message? message,
  }) = _DisasterNotificationModel;

  factory DisasterNotificationModel.fromJson(Map<String, dynamic> json) =>
      _$DisasterNotificationModelFromJson(json);
}
