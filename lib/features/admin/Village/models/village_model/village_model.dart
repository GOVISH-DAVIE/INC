import 'package:freezed_annotation/freezed_annotation.dart';

import 'ward.dart';

part 'village_model.freezed.dart';
part 'village_model.g.dart';

@freezed
class VillageModel with _$VillageModel {
  factory VillageModel({
    int? id,
    String? name,
    dynamic description,
    int? wardId,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    Ward? ward,
  }) = _VillageModel;

  factory VillageModel.fromJson(Map<String, dynamic> json) =>
      _$VillageModelFromJson(json);
}
