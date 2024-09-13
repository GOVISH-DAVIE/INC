import 'package:freezed_annotation/freezed_annotation.dart';

import 'disaster.dart';
import 'village.dart';

part 'message.freezed.dart';
part 'message.g.dart';

@freezed
class Message with _$Message {
  factory Message({
    int? id,
    int? disasterId,
    String? description,
    @JsonKey(name: 'date_and_time') dynamic dateAndTime,
    String? image,
    int? homesteads,
    int? deaths,
    int? villageId,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    Disaster? disaster,
    Village? village,
  }) = _Message;

  factory Message.fromJson(Map<String, dynamic> json) =>
      _$MessageFromJson(json);
}
