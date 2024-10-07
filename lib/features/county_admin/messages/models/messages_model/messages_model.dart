import 'package:freezed_annotation/freezed_annotation.dart';

import 'message.dart';

part 'messages_model.freezed.dart';
part 'messages_model.g.dart';

@freezed
class MessagesModel with _$MessagesModel {
  factory MessagesModel({
    int? id,
    String? summary,
    String? context,
    String? type,
    @JsonKey(name: 'key_points') List<String>? keyPoints,
    String? urgency,
    int? messageId,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    Message? message,
  }) = _MessagesModel;

  factory MessagesModel.fromJson(Map<String, dynamic> json) =>
      _$MessagesModelFromJson(json);
}
