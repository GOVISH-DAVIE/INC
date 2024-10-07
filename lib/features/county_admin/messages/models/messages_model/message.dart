import 'package:freezed_annotation/freezed_annotation.dart';

part 'message.freezed.dart';
part 'message.g.dart';

@freezed
class Message with _$Message {
  factory Message({
    int? id,
    String? message,
    @JsonKey(name: 'whistle_blowerId') int? whistleBlowerId,
    @JsonKey(name: 'created_at') DateTime? createdAt,
  }) = _Message;

  factory Message.fromJson(Map<String, dynamic> json) =>
      _$MessageFromJson(json);
}
