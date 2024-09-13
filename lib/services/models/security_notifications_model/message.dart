import 'package:freezed_annotation/freezed_annotation.dart';

import 'details.dart';
import 'report.dart';
import 'village.dart';

part 'message.freezed.dart';
part 'message.g.dart';

@freezed
class Message with _$Message {
  factory Message({
    int? id,
    int? reportsId,
    Map<dynamic, dynamic>? details,
    int? villageId,
    String? image,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    Report? report,
    Village? village,
  }) = _Message;

  factory Message.fromJson(Map<String, dynamic> json) =>
      _$MessageFromJson(json);
}
