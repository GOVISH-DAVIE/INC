import 'package:freezed_annotation/freezed_annotation.dart';

import 'sub_county.dart';

part 'ward_response_model.freezed.dart';
part 'ward_response_model.g.dart';

@freezed
class WardResponseModel with _$WardResponseModel {
  factory WardResponseModel({
    int? id,
    String? name,
    String? code,
    int? subCountyId,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    SubCounty? subCounty,
  }) = _WardResponseModel;

  factory WardResponseModel.fromJson(Map<String, dynamic> json) =>
      _$WardResponseModelFromJson(json);
}
