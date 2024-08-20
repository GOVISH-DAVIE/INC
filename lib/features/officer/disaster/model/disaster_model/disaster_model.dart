import 'package:freezed_annotation/freezed_annotation.dart';

import 'disaster_o_ccurrence.dart';

part 'disaster_model.freezed.dart';
part 'disaster_model.g.dart';

@freezed
class DisasterModel with _$DisasterModel {
  factory DisasterModel({
    int? id,
    String? name,
    String? description,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'DisasterOCcurrence')
    List<DisasterOCcurrence>? disasterOCcurrence,
  }) = _DisasterModel;

  factory DisasterModel.fromJson(Map<String, dynamic> json) =>
      _$DisasterModelFromJson(json);
}
