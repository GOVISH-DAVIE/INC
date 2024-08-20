import 'package:freezed_annotation/freezed_annotation.dart';

import 'disaster.dart';
import 'village.dart';

part 'disaster_occurence_model.freezed.dart';
part 'disaster_occurence_model.g.dart';

@freezed
class DisasterOccurenceModel with _$DisasterOccurenceModel {
  factory DisasterOccurenceModel({
    int? id,
    int? disasterId,
    String? description,
    int? homesteads,
    int? deaths,
    int? villageId,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    Disaster? disaster,
    Village? village,
  }) = _DisasterOccurenceModel;

  factory DisasterOccurenceModel.fromJson(Map<String, dynamic> json) =>
      _$DisasterOccurenceModelFromJson(json);
}
