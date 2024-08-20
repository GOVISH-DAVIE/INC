import 'package:freezed_annotation/freezed_annotation.dart';

import 'county.dart';

part 'sub_county_model.freezed.dart';
part 'sub_county_model.g.dart';

@freezed
class SubCountyModel with _$SubCountyModel {
  factory SubCountyModel({
    int? id,
    String? name,
    String? description,
    String? gprs,
    int? countyId,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    County? county,
  }) = _SubCountyModel;

  factory SubCountyModel.fromJson(Map<String, dynamic> json) =>
      _$SubCountyModelFromJson(json);
}
