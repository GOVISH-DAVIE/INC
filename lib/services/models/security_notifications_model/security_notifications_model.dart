import 'package:freezed_annotation/freezed_annotation.dart';

import 'message.dart';

part 'security_notifications_model.freezed.dart';
part 'security_notifications_model.g.dart';

@freezed
class SecurityNotificationsModel with _$SecurityNotificationsModel {
  factory SecurityNotificationsModel({
    String? title,
    Message? message,
  }) = _SecurityNotificationsModel;

  factory SecurityNotificationsModel.fromJson(Map<String, dynamic> json) =>
      _$SecurityNotificationsModelFromJson(json);
}
