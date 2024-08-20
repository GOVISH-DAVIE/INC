import 'package:freezed_annotation/freezed_annotation.dart';

part 'disaster_o_ccurrence.freezed.dart';
part 'disaster_o_ccurrence.g.dart';

@freezed
class DisasterOCcurrence with _$DisasterOCcurrence {
  factory DisasterOCcurrence({
    int? id,
    int? disasterId,
    String? description,
    int? homesteads,
    int? deaths,
    int? villageId,
    @JsonKey(name: 'created_at') DateTime? createdAt,
  }) = _DisasterOCcurrence;

  factory DisasterOCcurrence.fromJson(Map<String, dynamic> json) =>
      _$DisasterOCcurrenceFromJson(json);
}
