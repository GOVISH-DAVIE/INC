import 'package:freezed_annotation/freezed_annotation.dart';

import 'sub_county.dart';

part 'wards_model.freezed.dart';
part 'wards_model.g.dart';

@freezed
class WardsModel with _$WardsModel {
  factory WardsModel({
    int? id,
    String? name,
    String? description,
    String? gprs,
    int? subCountyId,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    SubCounty? subCounty,
  }) = _WardsModel;

  factory WardsModel.fromJson(Map<String, dynamic> json) =>
      _$WardsModelFromJson(json);
}
