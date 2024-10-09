import 'package:freezed_annotation/freezed_annotation.dart';

import 'village.dart';

part 'pregnat_moms_model.freezed.dart';
part 'pregnat_moms_model.g.dart';

@freezed
class PregnatMomsModel with _$PregnatMomsModel {
  factory PregnatMomsModel({
    int? id,
    String? name,
    @JsonKey(name: 'kids_to_bore') int? kidsToBore,
    int? villageId,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    Village? village,
  }) = _PregnatMomsModel;

  factory PregnatMomsModel.fromJson(Map<String, dynamic> json) =>
      _$PregnatMomsModelFromJson(json);
}
